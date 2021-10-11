unit AddSigFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, AVKERNEL_HEADER;

type
  TAddSigForm = class(TForm)
    Bevel1: TBevel;
    Add: TBitBtn;
    Cansel: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    OpenDialog1: TOpenDialog;
    Label5: TLabel;
    procedure CanselClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure AddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddSigForm: TAddSigForm;

implementation

uses MainDBFrm;

{$R *.dfm}

procedure TAddSigForm.CanselClick(Sender: TObject);
begin
  Close;
end;

procedure TAddSigForm.Label5Click(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
  Edit2.Text := GetFileMd5Hash(OpenDialog1.FileName);
  end;
end;

procedure TAddSigForm.AddClick(Sender: TObject);
begin
  with MainDBForm.ListView1.Items.Add do begin
  Caption := Edit1.Text;
  SubItems.Add(ComboBox1.Text);
  SubItems.Add(Edit2.Text);
  SubItems.Add(Edit3.Text);
  end;
  MainDBForm.basa.Base[MainDBForm.num].VName := Edit1.Text;
  MainDBForm.basa.Base[MainDBForm.num].Vsign := Edit2.Text;
  MainDBForm.basa.Base[MainDBForm.num].VPos  := Edit3.Text;

  if ComboBox1.ItemIndex = 0 then
  MainDBForm.basa.Base[MainDBForm.num].VType := '0';
  if ComboBox1.ItemIndex = 1 then
  MainDBForm.basa.Base[MainDBForm.num].VType := '1';
  if ComboBox1.ItemIndex = 2 then
  MainDBForm.basa.Base[MainDBForm.num].VType := '2';
  MainDBForm.Num := MainDBForm.Num + 1;

  Close;
end;

end.
