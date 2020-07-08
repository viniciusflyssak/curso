program Proj_imc;

uses
  Vcl.Forms,
  IMC in '..\IMC.pas' {Fimc},
  uPessoa in 'uPessoa.pas',
  uResultados in 'uResultados.pas',
  uCalculadora in 'uCalculadora.pas',
  uFrmRequisitos in 'uFrmRequisitos.pas' {Frequisitos},
  uFrmResultados in 'uFrmResultados.pas' {Fresultado};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFimc, Fimc);
  Application.CreateForm(TFrequisitos, Frequisitos);
  Application.CreateForm(TFresultado, Fresultado);
  Application.Run;
end.
