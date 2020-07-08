program AquarioRecantoFeliz;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmMenu},
  uFrmAtracao in 'uFrmAtracao.pas' {FrmAtracoes},
  uFrmCompraIngresso in 'uFrmCompraIngresso.pas' {FrmCompraIngresso},
  uFrmIngresso in 'uFrmIngresso.pas' {FrmIngresso},
  uIngressos in 'uIngressos.pas',
  uResultado in 'uResultado.pas',
  uCalculadora in 'uCalculadora.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(TFrmAtracoes, FrmAtracoes);
  Application.CreateForm(TFrmIngresso, FrmIngresso);
  Application.CreateForm(TFrmCompraIngresso, FrmCompraIngresso);
  Application.Run;
end.