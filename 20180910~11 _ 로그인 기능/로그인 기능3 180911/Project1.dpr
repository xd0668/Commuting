program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin


  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;

{
  Application.Initialize;
Application.ShowMainForm := False;
Application.Title := '프로그램명';
Form2 := TForm2.Create(nil);
if Form1.ShowModal = mrOK then
begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end;
Form2.Free;
 }
end.
