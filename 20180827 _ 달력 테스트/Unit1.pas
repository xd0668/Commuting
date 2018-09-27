unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXInterBase, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompGrids, IWCompCalendar,
  Vcl.Samples.Calendar, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB,
  Datasnap.DBClient, SimpleDS, Data.SqlExpr, Vcl.StdCtrls, Unit2, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    Calendar1: TCalendar;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ListBox1: TListBox;
    DBListBox1: TDBListBox;
    GroupBox1: TGroupBox;
    MonthCalendar1: TMonthCalendar;
    procedure Calendar1DblClick(Sender: TObject);
    procedure Calendar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

varStartDate : TDateTime;
varEndDate   : TDateTime;

implementation

{$R *.dfm}

procedure TForm1.Calendar1Change(Sender: TObject);
begin

Calendar1.Hide;
 ShowMessage(DateToStr( Calendar1.Day));


VarStartDate := Calendar1.Date;
VarEndDate   := Calendar1.EndDate;

Showmessage('My Dates begin on '+DateToStr(varStartDate)+' And End on '+DateToStr(varEndDate));
end;

procedure TForm1.Calendar1DblClick(Sender: TObject);
begin
  Form2 := TForm2.Create(Application);
  Caption := IntToStr(Application.ComponentCount);
  Form2.Show;
end;

end.
