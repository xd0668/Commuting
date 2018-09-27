unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.SqlExpr,
  Data.DBXInterBase, Data.FMTBcd;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    SQLConnection1: TSQLConnection;
    TEST2: TSQLQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.Button1Click(Sender: TObject);


//1차 로그인 코딩
 {
begin    //1
  if Edit1.Text = '' then
  begin   //2
    ShowMessage('아이디를 입력 하시오');
  end;    //2
  if Edit2.Text='' then
  begin   //3
    ShowMessage('비밀번호를 입력 하시오');
  end;

  with TEST2 do
  begin //4
    sql.Clear;
    sql.Add('select * from TEST');
    sql.Add('Where ID = :id');
    ParamByName('id').AsString := Edit1.Text;
    Open;

    if TEST2.FieldByName('ID').AsString = Edit1.Text then
    else
      ShowMessage('아이디가 틀렸습니다.');
    begin //5
      if TEST2.FieldByName('PW').AsString = Edit2.Text then
      begin //6
        ShowMessage('로그인 되었습니다');
      end   //6
      else
      begin  //7
        ShowMessage('비밀번호가 틀렸습니다.');
      end;   //7
    end; //5
  end; //4
end; //1        }


//2차 로그인 코딩
{
begin

  if Edit1.Text = '' then
  begin
    ShowMessage('아이디를 입력 하시오');
    Edit1.SetFocus;
    Exit;
  end;

  if Edit2.Text = '' then
  begin
    ShowMessage('비밀번호를 입력 하시오');
    Edit2.SetFocus;
    Exit;
  end;

  with TEST2 do
  begin
    //
    sql.Clear;
    sql.Add('Select * from TEST');
    sql.Add('Where ID = :id');
    ParamByName('id').AsString := Edit1.Text;
    Open;
    //

    //
    if FieldByName('ID').AsString <> Edit1.Text then
    begin
      ShowMessage('아이디가 틀렸습니다..');
      Edit1.SetFocus;
      Exit;
    end;
    //

    //
    if FieldByName('PW').AsString <> Edit2.Text then
    begin
      ShowMessage('비밀번호가 틀렸습니다.');
      Edit2.SetFocus;
      Exit;
    end
    else
      ShowMessage('로그인했습니다.');
    //
  end;
end; }


 //3차 로그인 코딩

 begin
   if Edit1.Text = '' then
   begin
     ShowMessage('아이디를 입력 하시오');
     Edit1.SetFocus;
     Exit;
   end;

   if Edit2.Text = '' then
   begin
     ShowMessage('비밀번호를 입력하시오');
     Edit2.SetFocus;
     Exit;
   end;

   with TEST2 do
   begin
     sql.Clear;
     sql.Add('Select * from TEST');
     sql.Add('Where ID = :id');
     ParamByName('id').AsString := Edit1.Text;
     Open;

     if TEST2.FieldByName('ID').AsString <> Edit1.Text then
     begin
       ShowMessage('아이디가 틀렸습니다.');
       Edit1.SetFocus;
       Exit;
     end;

     if TEST2.FieldByName('PW').AsString <> Edit2.Text then
     begin
       ShowMessage('비밀번호가 틀렸습니다.');
       Edit2.SetFocus;
       Exit;
     end
     else
     begin
       form2.Hide;
   form1.ShowModal;
       ShowMessage('로그인 되었습니다.');
     end;
   end;

 end;

end.
