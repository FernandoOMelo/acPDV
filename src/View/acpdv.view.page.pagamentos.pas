unit acpdv.view.page.pagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, acpdv.view.page.pix, acpdv.view.page.dinheiro;

type
  TfrmPagamentos = class(TForm)
    pnBody: TPanel;
    pnFormaPagamento: TPanel;
    pnInformacoes: TPanel;
    pnTitulo: TPanel;
    pnInfoVenda: TPanel;
    pnSubTotal: TPanel;
    pnEditarVenda: TPanel;
    imgEditaVenda: TImage;
    lbEditaVenda: TLabel;
    pnTotalVenda: TPanel;
    pnCancelar: TPanel;
    lbTotalVenda: TLabel;
    lbValorTotalVenda: TLabel;
    pnDesconto: TPanel;
    lbDesconto: TLabel;
    edtDesconto: TEdit;
    pnAcrescimo: TPanel;
    lbAcrescimo: TLabel;
    etdAcrescimo: TEdit;
    pnTotalReceber: TPanel;
    lbTotalReceber: TLabel;
    lbValorTotalReceber: TLabel;
    shpResumoVenda: TShape;
    pnRecebidos: TPanel;
    pnTotalRecebido: TPanel;
    lbTotalRecebido: TLabel;
    lbValorTotalRecebido: TLabel;
    pnSaldoRestante: TPanel;
    lbSaldoRestante: TLabel;
    lbValorSaldoRestante: TLabel;
    pnTroco: TPanel;
    lbTroco: TLabel;
    lbValorTroco: TLabel;
    pnFormasPagamento: TPanel;
    pnShapeFormaPagamento: TPanel;
    shpTituloFormaPagamento: TShape;
    pnTituloFormaPagemtno: TPanel;
    pnSectionPagamento: TPanel;
    pnLbEscolha: TPanel;
    pnBtnPagamentos: TPanel;
    pnBtnDinheiro: TPanel;
    pnBtnPix: TPanel;
    pnBtnCartao: TPanel;
    pnPix: TPanel;
    Panel29: TPanel;
    Shape6: TShape;
    shpCartao: TShape;
    pnCartao: TPanel;
    pnImgCartao: TPanel;
    pnLbCartao: TPanel;
    imgCartao: TImage;
    pnDinheiro: TPanel;
    pnImgDinheiro: TPanel;
    imgDinheiro: TImage;
    pnLbDinheiro: TPanel;
    shpDinheiro: TShape;
    pnlPix: TPanel;
    pnImgPix: TPanel;
    imgPix: TImage;
    pnLbPix: TPanel;
    shpPix: TShape;
    procedure pnImgCartaoClick(Sender: TObject);
    procedure pnImgDinheiroClick(Sender: TObject);
    procedure pnImgPixClick(Sender: TObject);
  private
    procedure SetClick(Shape: TShape; Panel: TPanel);
  public
    { Public declarations }
  end;

var
  frmPagamentos: TfrmPagamentos;

implementation

{$R *.dfm}

procedure TfrmPagamentos.pnImgCartaoClick(Sender: TObject);
begin
  SetClick(shpCartao, pnBtnPagamentos);
end;

procedure TfrmPagamentos.pnImgDinheiroClick(Sender: TObject);
var
  lFrame: TFrameDinheiro;
begin
  lFrame := TFrameDinheiro.Create(nil);
  lFrame.Align := alClient;
  lFrame.Parent := pnPix;

  SetClick(shpDinheiro, pnBtnPagamentos);
end;

procedure TfrmPagamentos.pnImgPixClick(Sender: TObject);
var
  lFrame: TFramePix;
begin
  lFrame := TFramePix.Create(nil);
  lFrame.Align := alClient;
  lFrame.Parent := pnPix;

  SetClick(shpPix, pnBtnPagamentos);
end;

procedure TfrmPagamentos.SetClick(Shape: TShape; Panel: TPanel);
begin
  shpPix.Pen.Style := psClear;
  shpCartao.Pen.Style := psClear;
  shpDinheiro.Pen.Style := psClear;

  Shape.Pen.Style := psSolid;

  Panel.Visible := False;
  Panel.Visible := True;
end;

end.
