unit InformationUpdate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TInforUpdate = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InforUpdate: TInforUpdate;

implementation

{$R *.dfm}

uses ClientModuleUnit1, MainForm, Login;

// 회원정보 수정 버튼
procedure TInforUpdate.Button1Click(Sender: TObject);
var
   a : String;
begin
a :=  LoginForm.Edit1.Text;

  ClientModule1.ClientDataSet1.Post;
  ClientModule1.ClientDataSet1.ApplyUpdates(-1);
  MessageBox(Handle,'회원정보수정이 완료되었습니다.','확인',MB_ICONINFORMATION or MB_OK);
  InforUpdate.Close;

     with ClientModule1  do
       begin
         PERSONNEL_SQLQuery.close;
         PERSONNEL_SQLQuery.SQL.Clear;
         PERSONNEL_SQLQuery.SQL.Add('select * from PERSONNEL where ID = ''' + a + '''');
         PERSONNEL_SQLQuery.Open;

       end;

  Main.Label2.Caption := ClientModule1.PERSONNEL_SQLQuery.FieldByName('Department').AsString; //  메인 화면으로 부서명 출력
  Main.Label3.Caption := ClientModule1.PERSONNEL_SQLQuery.FieldByName('Class').AsString;  //
  Main.Label4.Caption := ClientModule1.PERSONNEL_SQLQuery.FieldByName('NAME').AsString;
  Main.Show;
end;

// 개인정보수정 화면 종료시 메모리 제거
procedure TInforUpdate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Main.Show;
 // Application.Terminate;
end;

end.
