unit GoWork;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm2 = class(TForm)
    DBEdit1: TDBEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses DM1;

procedure TForm2.Button1Click(Sender: TObject);
begin
  DM.TEST.Post;
  DM.TEST.ApplyUpdates(-1);
  ShowMessage('출근하였습니다.');
end;

end.
