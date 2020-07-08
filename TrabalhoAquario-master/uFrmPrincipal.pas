unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.StdCtrls, uFrmAtracao, uFrmCompraIngresso;

type
  TFrmMenu = class(TForm)
    PanelLogo: TPanel;
    ImgFundo: TImage;
    Btningresso: TButton;
    BtnAtracoes: TButton;
    procedure BtnAtracoesClick(Sender: TObject);
    procedure BtningressoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

procedure TFrmMenu.BtnAtracoesClick(Sender: TObject);
begin
  FrmAtracoes.Showmodal;
end;

procedure TFrmMenu.BtningressoClick(Sender: TObject);
begin
  FrmCompraIngresso.Showmodal
end;

end.
