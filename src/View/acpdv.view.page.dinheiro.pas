unit acpdv.view.page.dinheiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrameDinheiro = class(TFrame)
    pnMain: TPanel;
    pnTotalRecebido: TPanel;
    lbTotalRecebido: TLabel;
    edtPagamentoDinheiro: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
