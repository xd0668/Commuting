unit Unit2;

interface

uses
  System.SysUtils, System.Classes, Data.DBXInterBase, Data.FMTBcd, Data.SqlExpr,
  Data.DB, Datasnap.DBClient, SimpleDS;

type
  TDataModule2 = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
