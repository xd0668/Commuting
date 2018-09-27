program Commute;

uses
  Vcl.Forms,
  Controls,
  MainUnit in 'MainUnit.pas' {Form1},
  DM1 in '..\DM1.pas' {DM: TDataModule},
  GoWork in '..\GoWork.pas' {Form2},
  Unit1 in '..\Unit1.pas',
  Unit3 in 'Unit3.pas' {Form3};

{$R *.res}

begin
   {
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;   }

  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Form3.ShowModal;

  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
