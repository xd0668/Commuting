unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  Data.DBXInterBase, Data.DB,
  Datasnap.DBClient, SimpleDS, Data.SqlExpr, Vcl.Grids, Vcl.DBGrids,
  Data.FMTBcd, Datasnap.Provider;

type
  TForm2 = class(TForm)
    SQLConnection1: TSQLConnection;
    TEst: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
