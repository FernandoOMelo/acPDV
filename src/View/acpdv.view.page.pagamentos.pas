unit acpdv.view.page.pagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, acpdv.view.page.pix;

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
    shpDinheiro: TShape;
    pnLbDinheiro: TPanel;
    pnBtnPix: TPanel;
    Shape4: TShape;
    pnLbPix: TPanel;
    pnImagePix: TPanel;
    imgPix: TImage;
    pnBtnCartao: TPanel;
    shpCartao: TShape;
    pnLbCartao: TPanel;
    pnImageCartao: TPanel;
    imgCartao: TImage;
    pnImageDinheiro: TPanel;
    imgDinheiro: TImage;
    pnPix: TPanel;
    Panel29: TPanel;
    Shape6: TShape;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPagamentos: TfrmPagamentos;

implementation

{$R *.dfm}

procedure TfrmPagamentos.FormShow(Sender: TObject);
var
  lFrame: TFramePix;
begin
  lFrame := TFramePix.Create(nil);
  lFrame.Align := alClient;
  lFrame.Parent := pnPix;
end;

end.
