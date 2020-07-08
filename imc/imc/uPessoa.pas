unit uPessoa;

interface

uses
  system.sysutils;

type

  Tpessoa = class
  private
    Fpeso: real;
    Faltura: real;
    Fsexo: char;
    procedure setAltura(const value: real);
    procedure setPeso(const value: real);
    procedure setSexo(const value: char);

  public
    property altura: real read Faltura write setAltura;
    property peso: real read Fpeso write setPeso;
    property sexo: char read Fsexo write setSexo;
  end;

implementation

{ Tpessoa }

procedure Tpessoa.setAltura(const value: real);
begin
  Faltura := value;
end;

procedure Tpessoa.setPeso(const value: real);
begin
  Fpeso := value;
end;

procedure Tpessoa.setSexo(const value: char);
begin
  if value in ['F', 'M'] then
    Fsexo := value
  else
    raise Exception.Create('Error Message');
end;

end.
