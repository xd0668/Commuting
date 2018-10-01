unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);    // ����ȭ�� ����� �޸� ����
    procedure CreateParams(var Params: TCreateParams); override;       //Form2 �۾�ǥ���� ������ ����
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

// ����ȭ�� ����� �޸� ����
procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;


//Form2 �۾�ǥ���� ������ ����
procedure TForm2.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;
end;

end.