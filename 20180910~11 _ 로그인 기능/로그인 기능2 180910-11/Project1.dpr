program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin
 Application.Initialize;
  Application.MainFormOnTaskbar := True;

 // form1 := TForm1.Create(Application);

//  form1.Refresh;

  Application.CreateForm(TForm1, Form1);
  //form1.Hide;
 // form1.Free;
  Application.Run;




end.
