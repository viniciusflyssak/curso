unit uCalculadora;

interface

uses uIngressos, uResultado, system.SysUtils;

type
  TCalculadora = class

  public
    function Calcular(Ingresso: Tingresso): Rvalor;

  end;
  { TCalculadora }

implementation

{ TCalculadora }

function TCalculadora.Calcular(Ingresso: Tingresso): Rvalor;
var
  resultado: real;
  quantidade: real;
begin
  try
    quantidade := Ingresso.quantidade;
    if Ingresso.atracao = 'Pacote premium' then
    begin
      resultado := quantidade * 450.90;
    end;
    if Ingresso.atracao = 'Pacote fam�lia' then;
    begin
      resultado := quantidade * 300.50;
    end;
    if Ingresso.atracao = 'Pacote intermedi�rio' then;
    begin
      resultado := quantidade * 245.80;
    end;
    if Ingresso.atracao = 'Pacote iniciante' then;
    begin
      resultado := quantidade * 150.10;
    end;
    if Ingresso.atracao = 'Mergulho livre' then;
    begin
      resultado := quantidade * 290.90;
    end;
    result.valor := resultado;
  except
    raise Exception.Create('N�o foi poss�vel realizar a compra dos ingressos.');

  end;
end;

end.
