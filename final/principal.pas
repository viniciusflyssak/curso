unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, videos, biblioteca, mental;

type
  Tfprincipal = class(TForm)
    Panel1: TPanel;
    ImageFundo: TImage;
    LabelTitulo: TLabel;
    IconeLivros: TImage;
    IconeVideos: TImage;
    IconeFrases: TImage;
    ButtonLivros: TButton;
    BotãoVideos: TButton;
    ButtonFrases: TButton;
    procedure BotãoVideosClick(Sender: TObject);
    procedure ButtonLivrosClick(Sender: TObject);
    procedure ButtonFrasesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fprincipal: Tfprincipal;

implementation

{$R *.dfm}

procedure Tfprincipal.BotãoVideosClick(Sender: TObject);
begin
fvideos.ShowModal
end;

procedure Tfprincipal.ButtonFrasesClick(Sender: TObject);
begin
fmental.showmodal
end;

procedure Tfprincipal.ButtonLivrosClick(Sender: TObject);
begin
fbiblioteca.showmodal
end;

end.
