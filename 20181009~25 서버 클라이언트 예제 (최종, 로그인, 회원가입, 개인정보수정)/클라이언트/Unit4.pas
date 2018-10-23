unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm4 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit3, ClientModuleUnit1, Unit1;

procedure TForm4.Button1Click(Sender: TObject);
begin
ClientModule1.ClientDataSet1.Post;
ClientModule1.ClientDataSet1.ApplyUpdates(-1);
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

end.
