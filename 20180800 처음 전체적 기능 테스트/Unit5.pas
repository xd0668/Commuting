unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    PrLogin: TButton;
    procedure PrLoginClick(Sender: TObject);

  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  bConCheck : Boolean;

implementation

{$R *.dfm}

uses Unit1, Unit3, Unit4;




procedure TForm5.PrLoginClick(Sender: TObject);
var
  sValue : array[0..1] of string;
  sId , sPassword : String;
begin
  if InputQuery('�α���', ['���̵� : ', #31+'�н����� : '], sValue) then
  begin
    sId := sValue[0];
    sPassword := sValue[1];
   end
  else
    ShowMessage('�α��� ���');

end;

 {
begin
Application.Initialize;
Application.ShowMainForm := False;
Application.CreateForm(TForm1, Form1);
Application.CreateForm(TForm5,Form5 );
Form5.Show;
Application.Run;

        }

end.
