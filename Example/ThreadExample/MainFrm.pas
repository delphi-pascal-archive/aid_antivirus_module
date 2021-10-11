unit MainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, XPMan, AVKERNEL_HEADER,
  ImgList;

type
  TMainForm = class(TForm)
    ButtonPanel: TPanel;
    Bevel1: TBevel;
    Panel2: TPanel;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    LogList: TListView;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    XPManifest: TXPManifest;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Panel7: TPanel;
    Bevel5: TBevel;
    StatusPanel: TPanel;
    DriveList: TListView;
    ImageList1: TImageList;
    PathLabel: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure LogListCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TScanThread = class(TThread)
  private
    function CreateDrivesList(ListView: TListView): boolean;
    Procedure FindBASE(Dir: String);
    Procedure LoadBases;
    Procedure FindFile(Dir:String);
    Procedure ScanFile(Path: String;var VName: String);
    Procedure AddToLog(LogText: String; ItemColor: integer);
  protected
    procedure Execute; override;
  public
    MainVBase    : PMyRec;
    Size         : integer;
    BaseDate     : TDateTime;
    Bases        : integer;
    ScanStatus   : Boolean;
    PauseScan    : Boolean;
    {*********************}
    ScannedFiles : integer;
    IgnoredFiles : integer;
    Infected     : integer;
    ScanMb       : real;
    Path         : String;
  end;

var
  MainForm: TMainForm;
  Scan : TScanThread;
implementation

uses Math, AboutFrm;

//////////////////////////////////////////
/// Find & Load Bases                  ///
//////////////////////////////////////////
Procedure TScanThread.FindBASE(Dir: String);
Var
  SR:TSearchRec;
  FindRes:Integer;
  EX: String;
begin
  FindRes:=FindFirst(Dir+'*.*',faAnyFile,SR);
  While FindRes=0 do
   begin

    if ((SR.Attr and faDirectory)=faDirectory) and
    ((SR.Name='.')or(SR.Name='..')) then
      begin
      FindRes:=FindNext(SR);
      Continue;
      end;

    if ((SR.Attr and faDirectory)=faDirectory) then
      begin
      FindBASE(Dir+SR.Name+'\');
      FindRes:=FindNext(SR);
      Continue;
      end;

    Application.ProcessMessages;
    Ex := ExtractFileExt(Dir+SR.Name);

    if  LowerCase(Ex) = '.avb' then
      begin
      try
      Application.ProcessMessages;
      MainForm.Repaint;
      UnPakBaseToStream(Dir+SR.Name,MainVBase);
      if BaseDate < Strtodate(MainVBase.LName) then
      BaseDate := Strtodate(MainVBase.LName);
      Bases := Bases + 1;

      AddToLog('Base ['+SR.Name+': '+DateToStr(BaseDate)+'] - Loaed',3);

      except
      end;
    end;
    FindRes:=FindNext(SR);
    end;
  FindClose(SR);
  Exit;
end;

Procedure TScanThread.LoadBases;
begin
  Bases := 0;
  BaseDate := StrtoDate('01.01.1980');
  New(MainVBase);
  MainVBase.Count := '0';
  FindBASE(ExtractFilePath(paramstr(0))+'Bases\');

  AddToLog('',0);
  if BaseDate <> StrtoDate('01.01.1980') then begin
    AddToLog('Last Base Update: '+ DateToStr(BaseDate) + ' - ['+MainVBase.Count+']',0);
  end
  else begin
    AddToLog('Not Bases Load',2);
  end;
end;

//////////////////////////////////////////
///   Create drive list                ///
//////////////////////////////////////////

function TScanThread.CreateDrivesList(ListView: TListView): boolean;
var
  Bufer : array[0..1024] of char;
  RealLen, i : integer;
  S : string;
begin
  ListView.Clear;
  RealLen := GetLogicalDriveStrings(SizeOf(Bufer),Bufer);
  i := 0; S := '';
  while i < RealLen do begin
    if Bufer[i] <> #0 then begin
    S := S + Bufer[i];
    inc(i);
    end else begin
    inc(i);
    with ListView.Items.Add do begin
      Caption := S;
      if GetDriveType(PChar(S)) = DRIVE_RAMDISK then ImageIndex := 3;
      if GetDriveType(PChar(S)) = DRIVE_FIXED then ImageIndex := 3;
      if GetDriveType(PChar(S)) = DRIVE_REMOTE then ImageIndex := 0;
      if GetDriveType(PChar(S)) = DRIVE_CDROM then ImageIndex := 1;
      if GetDriveType(PChar(S)) = DRIVE_REMOVABLE then ImageIndex := 2;
    end;
    S := '';
  end;
  end;
  try
  Result := ListView.items.Count > 0;
  except
  end;
end;

//////////////////////////////////////////
///   Search files for scan & Scan     ///
//////////////////////////////////////////

Procedure TScanThread.ScanFile(Path: String;var VName: String);
var
  i: integer;
  SigTmp: String;
  Hash: String;
  FSize: integer;
begin
try
  if Scan.PauseScan = True then begin
  repeat
    Sleep(2);
    Application.ProcessMessages;
  until Scan.PauseScan  = False;

  end;

  if Scan.ScanStatus = False then Exit;

  Scan.ScannedFiles := Scan.ScannedFiles + 1;
  MainForm.Panel7.Caption := inttostr(Scan.Infected);
  MainForm.Panel5.Caption := inttostr(Scan.ScannedFiles);
  MainForm.Panel6.Caption := FormatFloat('0.00',Scan.ScanMb);
  Hash :='';

  try
    Fsize := strtoint(GetSize(PChar(Path)));
    Scan.ScanMb := Scan.ScanMb + (FSize div 1024) / 1024;
    Hash := GetFileMd5Hash(Path);
  except
    Scan.IgnoredFiles := Scan.IgnoredFiles + 1;
  end;

  if Hash = '' then begin
    Scan.IgnoredFiles := Scan.IgnoredFiles + 1;
    AddToLog('Ignored ['+Path+']',1);
  end;

  i:=0;

  While i < strtoint(MainVBase.Count) do begin

  if Scan.ScanStatus = False then Exit;

  // Virus type '0' - Find for md5 HASH;
  if MainVBase.Base[i].VType = '0' then begin
    if Hash = MainVBase.Base[i].Vsign then begin
    AddToLog('Find infected object in ['+Path+'] - ['+MainVBase.Base[i].VName+']',2);
    exit;
    end;
  end;

  // Virus type '1' - (File virus) HEX Signature
  if MainVBase.Base[i].VType = '1' then begin
    if FindHEXSignature(Path,MainVBase.Base[i].Vsign,0) = true then begin
    AddToLog('Find infected object in ['+Path+'] - ['+MainVBase.Base[i].VName+']',2);
    exit;
    end;
  end;

  // Virus type '2' - (File virus) Small signature 4Byte (HH-HH-HH-HH)
  if MainVBase.Base[i].VType = '2' then begin
    SigTmp := MainVBase.Base[i].Vsign;
    if FindVirSignat(PChar(SigTmp),strtoint(MainVBase.Base[i].VPos),PChar(Path)) = true then begin
    AddToLog('Find infected object in ['+Path+'] - ['+MainVBase.Base[i].VName+']',2);
    exit;
    end;
  end;
  
  inc(i);
  end;
except
end;
end;

procedure TScanThread.FindFile(Dir:String);
Var
  SR:TSearchRec;
  FindRes,i:Integer;
  EX,tmp : String;
  MDHash : String;
  c: cardinal;
  Four: integer;
begin
  Four := 0;
  FindRes:=FindFirst(Dir+'*.*',faAnyFile,SR);
  While FindRes=0 do
   begin

    if ((SR.Attr and faDirectory)=faDirectory) and
    ((SR.Name='.')or(SR.Name='..')) then
      begin
      FindRes:=FindNext(SR);
      Continue;
      end;

    if ((SR.Attr and faDirectory)=faDirectory) then
      begin
      FindFile(Dir+SR.Name+'\');
      FindRes:=FindNext(SR);
      Continue;
      end;

    Application.ProcessMessages;
    Ex := ExtractFileExt(Dir+SR.Name);

    // Scan for exestension
    if  (LowerCase(Ex) = LowerCase('.exe')) or (LowerCase(Ex) = '.com') or (LowerCase(Ex) = LowerCase('.dll')) then
      begin
      MainForm.PathLabel.Caption := 'Scan: '+SR.Name;
      ScanFile(Dir+SR.Name,tmp);
      if Scan.ScanStatus = False then Exit;
      end;

    if Scan.ScanStatus = False then Exit;
    FindRes:=FindNext(SR);
  end;
  FindClose(SR);
end;

//////////////////////////////////////////
///    Other Procedures               ///
//////////////////////////////////////////

Procedure TScanThread.AddToLog(LogText: String; ItemColor: integer);
begin
  With MainForm.LogList.Items.Add do begin
    Caption := LogText;
    SubItems.Add(IntToStr(ItemColor))
  end;
end;

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Scan := TScanThread.Create(True);
  Scan.CreateDrivesList(DriveList);
  Scan.AddToLog('Welcome to AID Module Examle v1.0',0);
  Scan.AddToLog('',0);
  Scan.LoadBases;
end;

procedure TMainForm.BitBtn1Click(Sender: TObject);
begin
  Scan.ScanStatus := false;
  Scan.PauseScan := False;
  Close;
end;

procedure TMainForm.LogListCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  If Item.SubItems[0] = '0' then
  LogList.Canvas.Font.Color := clBlack;
  If Item.SubItems[0] = '1' then
  LogList.Canvas.Font.Color := clGreen;
  If Item.SubItems[0] = '2' then
  LogList.Canvas.Font.Color := clRed;
  If Item.SubItems[0] = '3' then
  LogList.Canvas.Font.Color := clBlue;
end;

procedure TMainForm.BitBtn4Click(Sender: TObject);
begin
  Scan.PauseScan := true;
  BitBtn3.Enabled := True;
end;

procedure TMainForm.BitBtn3Click(Sender: TObject);
begin
Scan.Resume;
end;

procedure TMainForm.BitBtn5Click(Sender: TObject);
begin
  BitBtn3.Enabled := True;
  BitBtn4.Enabled := False;
  BitBtn5.Enabled := False;
  Scan.Terminate;
  Scan.ScanStatus := false;
  Scan.PauseScan := False;
  TabSheet1.TabVisible := True;
end;

Procedure TScanThread.Execute;
var
  i: integer;
begin
try
  if Scan.PauseScan = False then begin
    ScannedFiles := 0;
    IgnoredFiles := 0;
    Infected     := 0;
    ScanMb       := 0;
  For i := 0 to MainForm.DriveList.Items.Count-1 do begin
    if MainForm.DriveList.Items.Item[i].Checked = true then begin
    MainForm.BitBtn3.Enabled := False;
    MainForm.BitBtn4.Enabled := True;
    MainForm.BitBtn5.Enabled := True;
    MainForm.TabSheet1.TabVisible := false;
    MainForm.TabSheet2.Show;
    ScanStatus := true;
    PauseScan := False;
    Path := MainForm.DriveList.Items.Item[i].Caption;
    FindFile(Path);
    end;
    MainForm.BitBtn3.Enabled := True;
    MainForm.BitBtn4.Enabled := False;
    MainForm.BitBtn5.Enabled := False;
    MainForm.TabSheet1.TabVisible := True;
    ScanStatus := false;
  end;
    MainForm.Panel7.Caption := '-';
    MainForm.Panel6.Caption := '-';
    MainForm.Panel5.Caption := '-';
    MainForm.PathLabel.Caption := '';
    AddToLog('',0);
    AddToLog('Scan Complete',0);
  end else begin
    PauseScan := False;
    MainForm.BitBtn3.Enabled := False;
  end;
except
end;
end;

procedure TMainForm.BitBtn2Click(Sender: TObject);
begin
aboutForm.ShowModal;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Scan.Free;
end;

end.
