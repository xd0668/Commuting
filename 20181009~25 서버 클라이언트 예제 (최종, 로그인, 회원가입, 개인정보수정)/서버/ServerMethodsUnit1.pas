unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  Data.DBXInterBase, Data.FMTBcd, Datasnap.Provider, Data.DB, Data.SqlExpr,
  Datasnap.DBClient;

type
  TServerMethods1 = class(TDSServerModule)
    SQLConnection1: TSQLConnection;
    PERSONNELProvider: TDataSetProvider;
    PERSONNEL_Table: TSQLTable;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

