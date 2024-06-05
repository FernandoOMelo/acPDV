program acPDV;

uses
  Vcl.Forms,
  acpdv.view.principal in 'src\View\acpdv.view.principal.pas' {frmPrincipal},
  acpdv.view.page.login in 'src\View\acpdv.view.page.login.pas' {frmLogin},
  acpdv.view.componente.transparencia in 'src\View\Componente\acpdv.view.componente.transparencia.pas' {frmTransparente},
  acpdv.model.dados in 'src\Model\acpdv.model.dados.pas' {dmDados: TDataModule},
  acpdv.view.page.pagamentos in 'src\View\acpdv.view.page.pagamentos.pas' {frmPagamentos},
  acpdv.view.page.pix in 'src\View\acpdv.view.page.pix.pas' {FramePix: TFrame},
  acpdv.view.page.dinheiro in 'src\View\acpdv.view.page.dinheiro.pas' {FrameDinheiro: TFrame},
  acpdv.view.page.cartao in 'src\View\acpdv.view.page.cartao.pas' {FrameCartao: TFrame};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutDown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
