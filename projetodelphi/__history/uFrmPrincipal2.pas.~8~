unit uFrmPrincipal2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, IdBaseComponent, IdDateTimeStamp, Vcl.WinXPickers,
  Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    StaticText1: TStaticText;
    Timer1: TTimer;
    Image1: TImage;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
procedure TForm2.Timer1Timer(Sender: TObject);
begin
Timer1.Enabled := True;
label1.caption := FormatDateTime('dd/mm/yyyy hh:mm:ss',now);
end;

end.
