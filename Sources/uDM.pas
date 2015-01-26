unit uDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdm = class(TDataModule)
    conexao: TADOConnection;
    tbCliente: TADOTable;
    tbClientecli_id: TAutoIncField;
    tbClientecli_nome: TStringField;
    tbClientecli_endereco: TStringField;
    tbClientecli_bairro: TStringField;
    tbClientecli_cidade: TStringField;
    tbClientecli_estado: TStringField;
    tbClientecli_cep: TStringField;
    tbClientecli_telefone: TStringField;
    tbClientecli_celular: TStringField;
    tbClientecli_cpf: TStringField;
    tbClientecli_rg: TStringField;
    tbClientecli_email: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

end.
