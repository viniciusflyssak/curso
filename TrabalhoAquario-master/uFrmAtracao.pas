unit uFrmAtracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TFrmAtracoes = class(TForm)
    PanelLogo: TPanel;
    ImgTabela: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAtracoes: TFrmAtracoes;

implementation

{$R *.dfm}

end.
