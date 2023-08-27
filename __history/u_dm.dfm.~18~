object DM: TDM
  OldCreateOrder = False
  Height = 293
  Width = 436
  object Conn: TFDConnection
    Params.Strings = (
      'Database=programa'
      'User_Name=postgres'
      'Password=Super@321'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 72
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    VendorHome = 'C:\Program Files (x86)\PostgreSQL\9.6'
    VendorLib = 'libpq.dll'
    Left = 56
    Top = 144
  end
  object Query: TFDQuery
    Connection = Conn
    Left = 128
    Top = 88
  end
  object QryConsultaClientes: TFDQuery
    Connection = Conn
    SQL.Strings = (
      'select * from cliente')
    Left = 168
    Top = 160
    object QryConsultaClientescli_codigo: TIntegerField
      FieldName = 'cli_codigo'
      Origin = 'cli_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryConsultaClientescli_nome: TWideStringField
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Size = 100
    end
    object QryConsultaClientescli_cpf: TWideStringField
      FieldName = 'cli_cpf'
      Origin = 'cli_cpf'
      Size = 11
    end
    object QryConsultaClientescli_rg: TWideStringField
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
    end
    object QryConsultaClientescli_cnpj: TWideStringField
      FieldName = 'cli_cnpj'
      Origin = 'cli_cnpj'
      Size = 14
    end
    object QryConsultaClientescli_tipo_pessoa: TIntegerField
      FieldName = 'cli_tipo_pessoa'
      Origin = 'cli_tipo_pessoa'
    end
    object QryConsultaClientescli_endereco: TWideStringField
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Size = 150
    end
    object QryConsultaClientescli_numero: TWideStringField
      FieldName = 'cli_numero'
      Origin = 'cli_numero'
      Size = 10
    end
    object QryConsultaClientescli_cep: TWideStringField
      FieldName = 'cli_cep'
      Origin = 'cli_cep'
      Size = 8
    end
    object QryConsultaClientescli_cidade: TWideStringField
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Size = 30
    end
    object QryConsultaClientescli_uf: TWideStringField
      FieldName = 'cli_uf'
      Origin = 'cli_uf'
      Size = 2
    end
    object QryConsultaClientescli_limite_credito: TBCDField
      FieldName = 'cli_limite_credito'
      Origin = 'cli_limite_credito'
      Precision = 10
      Size = 2
    end
    object QryConsultaClientescli_dthr_cadastro: TSQLTimeStampField
      FieldName = 'cli_dthr_cadastro'
      Origin = 'cli_dthr_cadastro'
    end
  end
end
