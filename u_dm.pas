unit u_dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, u_cliente;

type
  TDM = class(TDataModule)
    Conn: TFDConnection;
    FDPhysPgDriverLink: TFDPhysPgDriverLink;
    Query: TFDQuery;
    QryConsultaClientes: TFDQuery;
    QryConsultaClientescli_codigo: TIntegerField;
    QryConsultaClientescli_nome: TWideStringField;
    QryConsultaClientescli_cpf: TWideStringField;
    QryConsultaClientescli_rg: TWideStringField;
    QryConsultaClientescli_cnpj: TWideStringField;
    QryConsultaClientescli_tipo_pessoa: TIntegerField;
    QryConsultaClientescli_endereco: TWideStringField;
    QryConsultaClientescli_numero: TWideStringField;
    QryConsultaClientescli_cep: TWideStringField;
    QryConsultaClientescli_cidade: TWideStringField;
    QryConsultaClientescli_uf: TWideStringField;
    QryConsultaClientescli_limite_credito: TBCDField;
    QryConsultaClientescli_dthr_cadastro: TSQLTimeStampField;
    DSConsultaClientes: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    function Inserir(Value : TCliente): Integer;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }

function TDM.Inserir(Value: TCliente): Integer;
  var sql : string;
begin
  sql := ' insert into cliente ( '
  + ' cli_nome,                  '
  + ' cli_cpf,                   '
  + ' cli_rg,                    '
  + ' cli_cnpj,                  '
  + ' cli_tipo_pessoa,           '
  + ' cli_endereco,              '
  + ' cli_numero,                '
  + ' cli_cep,                   '
  + ' cli_cidade,                '
  + ' cli_uf,                    '
  + ' cli_limite_credito         '
  + ') values (                  '
  + ' :cli_nome,                 '
  + ' :cli_cpf,                  '
  + ' :cli_rg,                   '
  + ' :cli_cnpj,                 '
  + ' :cli_tipo_pessoa,          '
  + ' :cli_endereco,             '
  + ' :cli_numero,               '
  + ' :cli_cep,                  '
  + ' :cli_cidade,               '
  + ' :cli_uf,                   '
  + ' :cli_limite_credito        '
  + ' ) ';

  try
    with Query do
    begin
      ParamByName('cli_nome').AsString := Value.Nome;
      ParamByName('cli_cpf').AsString := Value.Nome;
      ParamByName('cli_rg').AsString := Value.Nome;
      ParamByName('cli_cnpj').AsString := Value.Nome;
      ParamByName('cli_tipo_pessoa').AsString    := Value.Nome;
      ParamByName('cli_endereco').AsString       := Value.Nome;
      ParamByName('cli_numero').AsString         := Value.Nome;
      ParamByName('cli_cep').AsString            := Value.Nome;
      ParamByName('cli_cidade').AsString         := Value.Nome;
      ParamByName('cli_uf').AsString             := Value.Nome;
      ParamByName('cli_limite_credito').AsString := Value.Nome;
    end;

  finally

  end;

end;

end.
