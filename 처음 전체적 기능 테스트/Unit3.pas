unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.AppEvnts, Vcl.StdCtrls,
  Vcl.DBCtrls, Data.DBXInterBase, Data.DB, Data.SqlExpr, Data.FMTBcd, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Datasnap.Provider;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Edit2: TEdit;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form1: TForm1;
  today : TDateTime;
//  H: THourly;

implementation

{$R *.dfm}

uses Unit2,Unit1, Unit4, Unit5;

var
H: THourly;


procedure TForm1.Button1Click(Sender: TObject);
begin
    DM.TEST.Insert;
    Form2 := TForm2.Create(Application);
    Form2.Show;
    //today := Time;
     today := now;
   // ShowMessage('출근요일  = ' + DateToStr(today));
   // ShowMessage('출근시간 = ' + TimeToStr(today));
    ShowMessage('출근 하시겠습니까?   ' + DateTimeToStr(today));
      Form2.Edit1.Text := DateTimeToStr(today);
      Form2.DBText1.Caption := DateTimeToStr(today);
      Form2.asd.Text := DateTimeToStr(today);

  //ShowMessage(System.TDateTime);
  //ShowMessage(System.PDateTime);
  //ShowMessage(System.TTime);
 // ShowMessage(DateTimeToStr(DateTimePicker1.Time));
  //ShowMessage(DateTimeToStr(DateTimePicker1.DateTime));
 // ShowMessage(DateTimeToStr(DateTimePicker1.Date));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //DateTimePicker1.Value = DateTime
  //DateTimePicker1.Format:= 'd MMM,yyyy hh:mm:ss';
end;




end.
