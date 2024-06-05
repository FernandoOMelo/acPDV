unit acpdv.view.principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  acpdv.view.page.login,
  acpdv.model.dados,
  acpdv.view.page.pagamentos,
  Vcl.WinXCtrls,
  Vcl.Imaging.jpeg;

type
  TfrmPrincipal = class(TForm)
    pnBody: TPanel;
    pnContainer: TPanel;
    pnButton: TPanel;
    pnMaisFuncoes: TPanel;
    Shape2: TShape;
    btnMaisFuncoes: TSpeedButton;
    pnCancelarItem: TPanel;
    Shape3: TShape;
    btnCancelarItem: TSpeedButton;
    pnCancelarVenda: TPanel;
    Shape4: TShape;
    btnCancelarVenda: TSpeedButton;
    pnAbrirCaixa: TPanel;
    Shape5: TShape;
    btnAbrirCaixa: TSpeedButton;
    pnConsultaPreco: TPanel;
    Shape6: TShape;
    btnConsultaPreco: TSpeedButton;
    pnCancelaOperacao: TPanel;
    Shape7: TShape;
    btnCancelaOperacao: TSpeedButton;
    pnMain: TPanel;
    pnOperacoes: TPanel;
    pnTotalCompra: TPanel;
    lblTotalCompra: TLabel;
    edtTotalCompra: TPanel;
    Shape1: TShape;
    lbTotalCompra: TLabel;
    pnSubTotal: TPanel;
    lbSubTotal: TLabel;
    edtSubTotal: TPanel;
    Shape8: TShape;
    lblSubTotal: TLabel;
    pnQuantidade: TPanel;
    lblQuantidade: TLabel;
    lbEdtQuantidade: TPanel;
    Shape9: TShape;
    edtQuantidade: TEdit;
    pnPreco: TPanel;
    lblPreco: TLabel;
    pnEdtPreco: TPanel;
    Shape10: TShape;
    lbPreco: TLabel;
    pnProduto: TPanel;
    lblProduto: TLabel;
    pnEdtProduto: TPanel;
    Shape11: TShape;
    edtProduto: TEdit;
    pnImagem: TPanel;
    imgProduto: TImage;
    pnGrid: TPanel;
    gridProdutos: TDBGrid;
    pnTitle: TPanel;
    dsItens: TDataSource;
    spvFuncoes: TSplitView;
    Panel1: TPanel;
    Panel2: TPanel;
    Shape12: TShape;
    Panel3: TPanel;
    Shape13: TShape;
    Panel4: TPanel;
    Shape14: TShape;
    Panel5: TPanel;
    Shape15: TShape;
    Panel6: TPanel;
    Shape16: TShape;
    Panel7: TPanel;
    Shape17: TShape;
    spvPagamentos: TSplitView;
    pnPagamento: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnMaisFuncoesClick(Sender: TObject);
  private
    FLogin: TFrmLogin;
    FDados: TDMDados;
    procedure MontarBotoes;
    procedure FixarForma;
    procedure SplitViewAction(Value: TSplitView);
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnMaisFuncoesClick(Sender: TObject);
begin
  SplitViewAction(spvFuncoes);
end;

procedure TfrmPrincipal.FixarForma;
begin
  Self.WindowState := wsNormal;
  Self.Position := poScreenCenter;
  Self.Constraints.MaxHeight := Self.ClientHeight;
  Self.Constraints.MinHeight := Self.ClientHeight;
  Self.Constraints.MinWidth  := Self.ClientWidth;
  Self.Constraints.MaxWidth  := Self.ClientWidth;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FLogin.Free;
  FDados.Free;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FixarForma;
  MontarBotoes;
end;

procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  lPagamentos : TFrmPagamentos;
begin
  case Key of
    VK_ESCAPE:  ShowMessage('Cancelar Operação');
    VK_F4:      ShowMessage('Consultar Preço');
    VK_F2:      ShowMessage('Abrir Caixa');
    VK_F6:      ShowMessage('Cancelar Venda');
    VK_F5:      ShowMessage('Cancelar Item');
    VK_F12:     btnMaisFuncoesClick(Sender);
    VK_F7: begin
      lPagamentos := TFrmPagamentos.Create(nil);
      lPagamentos.Parent := pnPagamento;
      lPagamentos.Show;
      SplitViewAction(spvPagamentos);
    end;
  end;
end;


procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
//  FLogin := TFrmLogin.Create(nil);
//  FDados := TDMDados.Create(nil);
//  try
//    FLogin.Parent := pnBody;
//    FLogin.Show;
//  finally
//
//  end;

end;

procedure TfrmPrincipal.MontarBotoes;
begin
  btnCancelaOperacao.Caption  := 'Cancelar Operação ' + ''#13'' + ' (ESC)';
  btnConsultaPreco.Caption    := 'Consulta Preço ' + ''#13'' + ' (F4)';
  btnAbrirCaixa.Caption       := 'Abrir Caixa ' + ''#13'' + ' (F2)';
  btnCancelarvenda.Caption    := 'Cancelar Venda ' + ''#13'' + ' (F6)';
  btnCancelarItem.Caption     := 'Cancelar Item ' + ''#13'' + ' (F5)';
  btnMaisFuncoes.Caption      := 'Mais Funções ' + ''#13'' + ' (F12)';
end;

procedure TfrmPrincipal.SplitViewAction(Value: TSplitView);
begin
  Value.Opened := not Value.Opened;
end;

end.
