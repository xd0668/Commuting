unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  today : TDateTime;
  a : array[0..1] of String;
  sId, sPassword : String;

implementation

{$R *.dfm}

uses DM1, GoWork, Unit1;

var
  H : THourly;

 procedure TForm1.Button1Click(Sender: TObject);
begin
  DM.TEST.Insert;
  Form2 := TForm2.Create(Application);
  Form2.Show;

  today := now;
  Form2.DBEdit1.Text := DateTimeToStr(today);
end;


  begin
    if InputQuery('로그인', ['아이디 : ', #31 + '패스워드 : '], a) then
    begin
      sId := a[0];
      sPassword := a[1];
    end
    else
    ShowMessage('로그인 실패');



end.
