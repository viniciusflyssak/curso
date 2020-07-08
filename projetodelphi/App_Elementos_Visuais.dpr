program App_Elementos_Visuais;

uses
  Vcl.Forms,
  uFrmPrincipal in '..\Delphiprojeto\uFrmPrincipal.pas' {Form1},
  uFrmPrincipal2 in 'uFrmPrincipal2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
