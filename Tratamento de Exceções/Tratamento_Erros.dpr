program Tratamento_Erros;

uses
  Vcl.Forms,
  uVenda in 'uVenda.pas',
  uVendaItem in 'uVendaItem.pas',
  uFrmVenda in 'uFrmVenda.pas' {FrmVenda},
  uEVendaInvalida in 'uEVendaInvalida.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TFrmVenda, FrmVenda);
  Application.Run;
end.
