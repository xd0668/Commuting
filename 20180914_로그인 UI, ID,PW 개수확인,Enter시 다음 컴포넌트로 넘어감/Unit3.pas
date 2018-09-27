unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);  // ȸ������ ����� �޸� ����
    procedure CreateParams(var Params: TCreateParams); override;     //Form3 �۾�ǥ���� ������ ����
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1;


// ȸ������ ����� �޸� ����
procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.Show;
 // Application.Terminate;
end;



//Form3 �۾�ǥ���� ������ ����
procedure TForm3.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;
end;


end.
