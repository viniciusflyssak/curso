program Project_Competição;

uses
  Vcl.Forms,
  principal in 'principal.pas' {fprincipal},
  log in 'log.pas' {flogin},
  videos in 'videos.pas' {fvideos},
  biblioteca in 'biblioteca.pas' {fbiblioteca},
  mental in 'mental.pas' {fmental};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfLogin, fLogin);
  Application.CreateForm(Tfmental, fmental);
  Application.CreateForm(Tfprincipal, fprincipal);
  Application.CreateForm(Tflogin, flogin);
  Application.CreateForm(Tfvideos, fvideos);
  Application.CreateForm(Tfbiblioteca, fbiblioteca);
  Application.Run;
end.
