program Commute;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {Form1},
  DM1 in 'DM1.pas' {DM: TDataModule},
  GoWork in 'GoWork.pas' {Form2},
  Unit1 in 'Unit1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
