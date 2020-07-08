unit uFrmIngresso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, uIngressos,
  uResultado;

type
  TFrmIngresso = class(TForm)
    Panel1: TPanel;
    LbNome: TLabel;
    LbIdade: TLabel;
    LbCpf: TLabel;
    LbAtracao: TLabel;
    LbValor: TLabel;
    LbNomeEsc: TLabel;
    LbIdadeEsc: TLabel;
    LbCpfEsc: TLabel;
    LbAtracaoEsc: TLabel;
    LbValorEsc: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; ingresso: Tingresso; preco: Rvalor);
  end;

var
  FrmIngresso: TFrmIngresso;

implementation

{$R *.dfm}
{ TFrmIngresso }

constructor TFrmIngresso.Create(AOwner: TComponent; ingresso: Tingresso;

  preco: Rvalor);
begin
  inherited Create(AOwner);
  try
  LbNomeEsc.Caption := ingresso.nome;
  LbIdadeEsc.Caption := IntToStr(ingresso.idade);
  LbCpfEsc.Caption := ingresso.cpf;
  LbAtracaoEsc.Caption := ingresso.atracao;
  LbValorEsc.Caption := ' R$ ' + FloatToStr(preco.valor);
  except
  on e: exception do
      raise exception.Create('Erro ao realizar compra!');
  end;
end;

end.
