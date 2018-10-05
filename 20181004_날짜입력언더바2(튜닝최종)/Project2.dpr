program Project2;

uses
  Vcl.Forms,
  Unit2 in '..\20181004_날짜입력언더바\Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
