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




end.
