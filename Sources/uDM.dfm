object dm: Tdm
  OldCreateOrder = False
  Left = 1140
  Top = 251
  Height = 332
  Width = 446
  object conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=sql2005;Persist Security Info=True;' +
      'User ID=sa;Initial Catalog=estoque;Data Source=DETUPA-DT308\SQLE' +
      'XPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 24
  end
  object tbCliente: TADOTable
    Connection = conexao
    TableName = 'cliente'
    Left = 56
    Top = 88
    object tbClientecli_id: TAutoIncField
      FieldName = 'cli_id'
      ReadOnly = True
    end
    object tbClientecli_nome: TStringField
      FieldName = 'cli_nome'
      Size = 100
    end
    object tbClientecli_endereco: TStringField
      FieldName = 'cli_endereco'
      Size = 100
    end
    object tbClientecli_bairro: TStringField
      FieldName = 'cli_bairro'
      Size = 50
    end
    object tbClientecli_cidade: TStringField
      FieldName = 'cli_cidade'
      Size = 50
    end
    object tbClientecli_estado: TStringField
      FieldName = 'cli_estado'
      Size = 2
    end
    object tbClientecli_cep: TStringField
      FieldName = 'cli_cep'
      Size = 10
    end
    object tbClientecli_telefone: TStringField
      FieldName = 'cli_telefone'
      Size = 13
    end
    object tbClientecli_celular: TStringField
      FieldName = 'cli_celular'
      Size = 14
    end
    object tbClientecli_cpf: TStringField
      FieldName = 'cli_cpf'
      Size = 14
    end
    object tbClientecli_rg: TStringField
      FieldName = 'cli_rg'
      Size = 10
    end
    object tbClientecli_email: TStringField
      FieldName = 'cli_email'
      Size = 100
    end
  end
end
