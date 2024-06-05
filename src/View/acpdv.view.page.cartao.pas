unit acpdv.view.page.cartao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFrameCartao = class(TFrame)
    pnBody: TPanel;
    pnBtnCartoes: TPanel;
    pnBtnCredito: TPanel;
    shpCredito: TShape;
    pnCredito: TPanel;
    pnImgCredito: TPanel;
    imgCredito: TImage;
    pnLbCredito: TPanel;
    pnBtnDebito: TPanel;
    shpDebito: TShape;
    pnDebito: TPanel;
    pnImgDebito: TPanel;
    imgDebito: TImage;
    pnLbDebito: TPanel;
    pnBandeiraCartao: TPanel;
    pnBtnDinners: TPanel;
    shpDinners: TShape;
    pnDinners: TPanel;
    pnImgDinners: TPanel;
    imgDinners: TImage;
    pnBtnMaster: TPanel;
    shpMaster: TShape;
    pnMaster: TPanel;
    pnImgMaster: TPanel;
    imgMaster: TImage;
    pnBtnAmex: TPanel;
    shpAmex: TShape;
    pnAmex: TPanel;
    pnImgAmex: TPanel;
    imgAmex: TImage;
    pnBtnVisa: TPanel;
    shpVisa: TShape;
    pnVisa: TPanel;
    pnImgVisa: TPanel;
    imgVisa: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
