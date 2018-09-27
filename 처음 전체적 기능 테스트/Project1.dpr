program Project1;

uses
  Vcl.Forms,
  Unit3 in 'Unit3.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit1 in 'Unit1.pas',
  Unit4 in 'Unit4.pas' {DM: TDataModule},
  Unit5 in 'Unit5.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
