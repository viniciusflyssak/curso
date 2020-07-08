unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase, Data.SqlExpr, FireDAC.Stan.ExprFuncs, FireDAC.Phys.PGDef,
  FireDAC.Phys.PG, shellapi;

type
  TDM = class(TDataModule)
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    procedure DataModuleCreate(Sender: TObject);
    procedure FDPhysPgDriverLink1DriverCreated(Sender: TObject);
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



eprocedure TDM.FDPhysPgDriverLink1DriverCreated(Sender: TObject);
begin

end;

nd.
