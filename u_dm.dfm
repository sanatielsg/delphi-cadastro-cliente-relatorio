object DM: TDM
  OldCreateOrder = False
  Height = 293
  Width = 436
  object Conn: TFDConnection
    Params.Strings = (
      'Port='
      'Server='
      'DriverID=PG')
    LoginPrompt = False
    Left = 40
    Top = 72
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
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
  object DSConsultaClientes: TDataSource
    DataSet = QryConsultaClientes
    Left = 168
    Top = 216
  end
  object QryAniversariantes: TFDQuery
    Connection = Conn
    SQL.Strings = (
      'select '
      'cli_nome'
      ',cli_data_nascimento'
      ',extract(day from cli_data_nascimento) as dia_aniversario '
      ',extract(month from cli_data_nascimento) as mes_aniversario '
      'from '
      'cliente '
      'where cli_tipo_pessoa = 1'
      'and extract(month from cli_data_nascimento) = 9')
    Left = 264
    Top = 128
    object QryAniversariantescli_nome: TWideStringField
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Size = 100
    end
    object QryAniversariantescli_data_nascimento: TDateField
      FieldName = 'cli_data_nascimento'
      Origin = 'cli_data_nascimento'
    end
    object QryAniversariantesdia_aniversario: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'dia_aniversario'
      Origin = 'dia_aniversario'
      ReadOnly = True
    end
    object QryAniversariantesmes_aniversario: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'mes_aniversario'
      Origin = 'mes_aniversario'
      ReadOnly = True
    end
  end
  object DSAniversariantes: TDataSource
    DataSet = QryAniversariantes
    Left = 304
    Top = 176
  end
end
