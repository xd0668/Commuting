unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Mask,
  Vcl.DBCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);    // 메인화면 종료시 메모리 제거
    procedure CreateParams(var Params: TCreateParams); override;       //Form2 작업표시줄 아이콘 생성
    procedure Button1Click(Sender: TObject);                           //  개인정보 수정 버튼
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit3;




//  개인정보 수정 버튼
procedure TForm2.Button1Click(Sender: TObject);
begin
  Form3.Show;
  Form2.Hide;
  Form3.Label1.Caption := '개인정보 수정';
end;

//Form2 작업표시줄 아이콘 생성
procedure TForm2.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;
end;

// 메인화면 종료시 메모리 제거
procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
