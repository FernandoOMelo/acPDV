unit acpdv.model.dados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TdmDados = class(TDataModule)
    cdsItens: TClientDataSet;
    cdsItensCODIGO: TStringField;
    cdsItensITEM: TIntegerField;
    cdsItensDESCRICAO: TStringField;
    cdsItensVALOR_UNITARIO: TCurrencyField;
    cdsItensQUANTIDADE: TCurrencyField;
    cdsItensSUB_TOTAL: TCurrencyField;
    cdsItensTOTAL: TAggregateField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsItensCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmDados.cdsItensCalcFields(DataSet: TDataSet);
begin
  cdsItensSUB_TOTAL.AsCurrency := (cdsItensVALOR_UNITARIO.AsCurrency * cdsItensQUANTIDADE.AsCurrency);
end;

procedure TdmDados.DataModuleCreate(Sender: TObject);
begin
  cdsItens.Append;
  cdsItensCODIGO.AsString := '000001';
  cdsItensITEM.AsInteger := 1;
  cdsItensDESCRICAO.AsString := 'COXA E SOBRE COXA SADIA BIO BD 1KG';
  cdsItensVALOR_UNITARIO.AsCurrency := 16.50;
  cdsItensQUANTIDADE.AsCurrency := 1;
  cdsItens.Post;

  cdsItens.Append;
  cdsItensCODIGO.AsString := '000002';
  cdsItensITEM.AsInteger := 2;
  cdsItensDESCRICAO.AsString := 'HOT POCKET SADIA X BURGUER MAINOSE GRILL 145G';
  cdsItensVALOR_UNITARIO.AsCurrency := 5.60;
  cdsItensQUANTIDADE.AsCurrency := 1;
  cdsItens.Post;

  cdsItens.Append;
  cdsItensCODIGO.AsString := '000003';
  cdsItensITEM.AsInteger := 3;
  cdsItensDESCRICAO.AsString := 'STEAK DE FRANGO SADIA 100G';
  cdsItensVALOR_UNITARIO.AsCurrency := 2.50;
  cdsItensQUANTIDADE.AsCurrency := 1;
  cdsItens.Post;

  cdsItens.Open;
end;

end.
