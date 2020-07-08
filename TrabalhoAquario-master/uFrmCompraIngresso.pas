unit uFrmCompraIngresso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uIngressos,
  uCalculadora, uResultado, uFrmIngresso;

type
  TFrmCompraIngresso = class(TForm)
    PanelLogo: TPanel;
    EdtNome: TEdit;
    EdtIdade: TEdit;
    EdtCpf: TEdit;
    LbNome: TLabel;
    LbIdade: TLabel;
    LbCpf: TLabel;
    CmbAtracao: TComboBox;
    Cmbquantidade: TComboBox;
    LbAtracao: TLabel;
    LbQuantidade: TLabel;
    BtComprar: TButton;
    procedure BtComprarClick(Sender: TObject);
    procedure EdtNomeExit(Sender: TObject);
    procedure EdtCpfExit(Sender: TObject);
    procedure EdtIdadeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCompraIngresso: TFrmCompraIngresso;

implementation

{$R *.dfm}

procedure TFrmCompraIngresso.BtComprarClick(Sender: TObject);
var
  Ingresso: Tingresso;
  Calculo: Tcalculadora;
  preco: Rvalor;
begin
  try
    try
      Ingresso := Tingresso.Create;
      Ingresso.Nome := EdtNome.text;
      Ingresso.idade := StrToInt(EdtIdade.text);
      Ingresso.CPF := EdtCpf.text;
      Ingresso.Atracao := CmbAtracao.text;
      Ingresso.Quantidade := StrToInt(Cmbquantidade.text);

      Calculo := Tcalculadora.Create;

      preco := Calculo.calcular(Ingresso);

      Frmingresso := TFrmingresso.Create(self, Ingresso, preco);
      Frmingresso.ShowModal;

    except
      on E: exception do
        ShowMessage('Erro ao relizar compra, confira seus dados!');
    end;
  finally
    if Assigned(Ingresso) then
      FreeAndNil(Ingresso);
    if Assigned(Calculo) then
      FreeAndNil(Calculo);
    if Assigned(Frmingresso) then
      FreeAndNil(Frmingresso);
  end;
end;

procedure TFrmCompraIngresso.EdtCpfExit(Sender: TObject);

begin
  if EdtCpf.text = '' then
  begin
    raise exception.Create('Nada foi digitado!');
  end
  else if Length(EdtCpf.text) <> 14 then
  begin
    raise exception.Create
      ('Quantidade de dígitos incorreta. Lembre-se de colocar hífem e pontos!');
  end
  else

end;

procedure TFrmCompraIngresso.EdtIdadeExit(Sender: TObject);

begin
  if EdtIdade.text = '' then
  begin
    raise exception.Create('Nada foi digitado!');
  end;
end;

procedure TFrmCompraIngresso.EdtNomeExit(Sender: TObject);

begin
  if EdtNome.text = '' then
  begin
    raise exception.Create('Nada foi digitado!');
  end;
end;

end.
