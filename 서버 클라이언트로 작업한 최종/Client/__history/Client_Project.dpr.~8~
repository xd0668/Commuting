program Client_Project;

uses
  Vcl.Forms,
  Login in 'Login.pas' {LoginForm},
  ClientClassesUnit1 in 'ClientClassesUnit1.pas',
  ClientModuleUnit1 in 'ClientModuleUnit1.pas' {ClientModule1: TDataModule},
  MainForm in 'MainForm.pas' {Main},
  SingUpForm in 'SingUpForm.pas' {SingUp},
  Vcl.Themes,
  Vcl.Styles,
  InformationUpdate in 'InformationUpdate.pas' {InforUpdate};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Turquoise Gray');
  Application.CreateForm(TLoginForm, LoginForm);
  Application.CreateForm(TClientModule1, ClientModule1);
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TSingUp, SingUp);
  Application.CreateForm(TInforUpdate, InforUpdate);
  Application.Run;
end.
