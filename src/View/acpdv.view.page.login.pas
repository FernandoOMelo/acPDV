unit acpdv.view.page.login;

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
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.Imaging.jpeg,
  acpdv.view.componente.transparencia;

type
  TfrmLogin = class(TForm)
    pnBody: TPanel;
    pnLogin: TPanel;
    pnImage: TPanel;
    pnLogar: TPanel;
    pnLbLogin: TPanel;
    pnUsuario: TPanel;
    lbUsuario: TLabel;
    Shape1: TShape;
    edtUsuario: TEdit;
    pnSenha: TPanel;
    lbSenha: TLabel;
    Shape2: TShape;
    edtSenha: TEdit;
    pnAcoes: TPanel;
    pnBtnLogar: TPanel;
    Shape3: TShape;
    btnLogar: TSpeedButton;
    Image1: TImage;
    procedure btnLogarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FTransparente: TFrmTransparente;
  public

  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.btnLogarClick(Sender: TObject);
begin
  if not ((edtUsuario.Text = 'Fernando') and
        (edtSenha.Text = '7845')) then
  begin
    showmessage('Login e Senha Inválido');
    Exit;
  end;
  Close;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FTransparente.Free;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  FTransparente := TFrmTransparente.Create(nil);
  FTransparente.Parent := pnImage;
  FTransparente.Align := alClient;
  FTransparente.Show;
end;

end.
