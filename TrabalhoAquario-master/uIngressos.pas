unit uIngressos;

interface

uses system.SysUtils;

Type

  TIngresso = Class
  Private
    FNome: String;
    FIdade: Integer;
    FCPF: String;
    FAtracao: String;
    FQuantidade: Integer;

    Procedure SetNome(const value: String);
    Procedure SetIdade(const value: Integer);
    Procedure SetCPF(const value: String);
    Procedure SetAtracao(const value: String);
    Procedure SetQuantidade(const value: Integer);

  Public
    Property Nome: String read FNome write SetNome;
    Property idade: Integer read FIdade write SetIdade;
    Property CPF: String read FCPF write SetCPF;
    Property Atracao: String read FAtracao write SetAtracao;
    Property Quantidade: Integer read FQuantidade write SetQuantidade;
  End;

implementation

{ TIngresso }

{ TIngresso }

procedure TIngresso.SetAtracao(const value: String);
begin
  FAtracao := value
end;

procedure TIngresso.SetCPF(const value: String);
begin
  FCPF := value
end;

procedure TIngresso.SetIdade(const value: Integer);
begin
  FIdade := value
end;

procedure TIngresso.SetNome(const value: String);
begin
  FNome := value
end;

procedure TIngresso.SetQuantidade(const value: Integer);
begin
  if (value >= 1) and (value <= 10) then
    FQuantidade := value
  else
    raise Exception.Create('Quantidade inv�lida');
end;

end.
