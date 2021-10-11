unit MainDBFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, Menus,AVKERNEL_HEADER, XPMan, ImgList;

type
  TMainDBForm = class(TForm)
    MainMenu1: TMainMenu;
    Base1: TMenuItem;
    N1: TMenuItem;
    StatusBar1: TStatusBar;
    ListView1: TListView;
    XPManifest1: TXPManifest;
    NewAIDDB1: TMenuItem;
    N2: TMenuItem;
    SaveDB1: TMenuItem;
    N3: TMenuItem;
    Exit1: TMenuItem;
    SaveDialog1: TSaveDialog;
    PackBase1: TMenuItem;
    OpenDialog1: TOpenDialog;
    AddVirusrecord1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure SaveDB1Click(Sender: TObject);
    procedure PackBase1Click(Sender: TObject);
    procedure AddVirusrecord1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure NewAIDDB1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Num     : integer;
    Basa    : PMyRec;
    { Public declarations }
  end;

var
  MainDBForm: TMainDBForm;

implementation

uses AddSigFrm, AboutFrm;

{$R *.dfm}
procedure SaveDataBaseInUnpackFile(SavePath: String);
Var
  i:Integer;
  _File : File;
  numWrite:Integer;
  Ar: String;
begin

  MainDBForm.Basa.FName :='AID Database';
  MainDBForm.Basa.LName := FormatDateTime('dd.mm.yyyy',now);;
  MainDBForm.Basa.Count := inttostr(MainDBForm.Num);
  AssignFile(_File,SavePath);
  ReWrite(_File,1);

     BlockWrite(_File,MainDBForm.Basa.FName,SizeOf(MainDBForm.Basa.FName),numWrite);
     BlockWrite(_File,MainDBForm.Basa.LName,SizeOf(MainDBForm.Basa.LName),numWrite);
     BlockWrite(_File,MainDBForm.Basa.Count,SizeOf(MainDBForm.Basa.Count),numWrite);
  For i:=0 to MainDBForm.Num Do
   begin
     BlockWrite(_File,MainDBForm.Basa.Base[i].VName,SizeOf(MainDBForm.Basa.Base[i].VName),numWrite);
     BlockWrite(_File,MainDBForm.Basa.Base[i].Vsign,SizeOf(MainDBForm.Basa.Base[i].Vsign),numWrite);
     BlockWrite(_File,MainDBForm.Basa.Base[i].VType,SizeOf(MainDBForm.Basa.Base[i].VType),numWrite);
     BlockWrite(_File,MainDBForm.Basa.Base[i].VPos,SizeOf(MainDBForm.Basa.Base[i].VPos),numWrite);
   end;
  CloseFile(_File);
end;

procedure TMainDBForm.FormCreate(Sender: TObject);
begin
  //Create new Basa -->
  Num := 0;
  New(basa);
end;

procedure TMainDBForm.SaveDB1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then begin
  SaveDataBaseInUnpackFile(SaveDialog1.FileName);
  end;
end;

procedure TMainDBForm.PackBase1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
  PackBase(OpenDialog1.FileName,ExtractFilePath(OpenDialog1.FileName)+ExtractFileName(OpenDialog1.FileName)+'.avb');
  end;
end;

procedure TMainDBForm.AddVirusrecord1Click(Sender: TObject);
begin
  AddSigForm.showmodal;
end;

procedure TMainDBForm.N1Click(Sender: TObject);
begin
  AboutForm.ShowModal;
end;

procedure TMainDBForm.NewAIDDB1Click(Sender: TObject);
begin
  Num := 0;
  New(basa);
  ListView1.Clear;
end;

procedure TMainDBForm.Exit1Click(Sender: TObject);
begin
Close;
end;

end.
