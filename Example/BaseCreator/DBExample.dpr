program DBExample;

uses
  Forms,
  MainDBFrm in 'MainDBFrm.pas' {MainDBForm},
  AddSigFrm in 'AddSigFrm.pas' {AddSigForm},
  AboutFrm in 'AboutFrm.pas' {AboutForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainDBForm, MainDBForm);
  Application.CreateForm(TAddSigForm, AddSigForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.Run;
end.
