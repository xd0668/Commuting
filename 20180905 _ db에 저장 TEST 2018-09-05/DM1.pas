unit DM1;

interface

uses
  System.SysUtils, System.Classes, Data.DBXInterBase, Data.DB,
  Datasnap.DBClient, SimpleDS, Data.SqlExpr;

type
  TDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
    TEST: TSimpleDataSet;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
