unit Unit4;

interface

uses
  System.SysUtils, System.Classes, Data.DBXInterBase, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, SimpleDS;

type
  TDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DataSource1: TDataSource;
    TEST: TSimpleDataSet;
    TESTNO: TIntegerField;
    TESTID: TStringField;
    TESTNAME: TStringField;
    TESTCLASS: TStringField;
    TESTTEST_DATE: TSQLTimeStampField;
    TESTGRADE: TIntegerField;
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
