unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
ESource: TEdit;
BEncrypt: TButton;
    EEncryptResult: TEdit;
    EDecryptResult: TEdit;
    BDecrypt: TButton;


{
Label1: TLabel;
Label2: TLabel;

EDecryptResult: TEdit;
Label3: TLabel;
BDecrypt: TButton;
}

procedure BEncryptClick(Sender: TObject);
procedure BDecryptClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

uses UEncrypt;

{$R *.dfm}


procedure TForm1.BEncryptClick(Sender: TObject);
begin
EEncryptResult.Text := Encrypt( ESource.Text, 13579 );
end;

procedure TForm1.BDecryptClick(Sender: TObject);
begin
EDecryptResult.Text := Decrypt( EEncryptResult.Text, 13579);
end;

end.
