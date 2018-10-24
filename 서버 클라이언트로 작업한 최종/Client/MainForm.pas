unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMain = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

uses InformationUpdate;



procedure TMain.Button1Click(Sender: TObject);
var
   a : String;
begin
a :=  Lo.Edit1.Text;


   with ClientModule1  do
    begin

      SQLQuery1.close;
      SQLQuery1.SQL.Clear;
      SQLQuery1.SQL.Add('select * from PERSONNEL where ID = ''' + a + '''');
      SQLQuery1.Open;
      ClientDataSet1.Close;
      ClientDataSet1.Active := True;
    end;
  InforUpdate.Show;
end;

//Form2 작업표시줄 아이콘 생성
procedure TMain.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;
end;

// 메인화면 종료시 메모리 제거
procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
