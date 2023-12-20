object dm: Tdm
  Height = 768
  Width = 1097
  object DBConexao: TFDConnection
    Params.Strings = (
      'Database=cadastros'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 24
  end
  object TableClientes: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = DBConexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'cadastros.clientes'
    Left = 144
    Top = 24
    object TableClientesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object TableClientesnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 200
    end
    object TableClientesendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      Size = 400
    end
    object TableClientesativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
      Required = True
    end
  end
  object DataSourceClientes: TDataSource
    DataSet = TableClientes
    Left = 144
    Top = 88
  end
  object SqlClientesAtivos: TFDQuery
    Active = True
    Connection = DBConexao
    UpdateOptions.AssignedValues = [uvRefreshMode]
    SQL.Strings = (
      'SELECT * FROM clientes WHERE ativo = 1')
    Left = 464
    Top = 24
  end
  object SqlClientesInativos: TFDQuery
    Active = True
    Connection = DBConexao
    UpdateOptions.AssignedValues = [uvRefreshMode]
    SQL.Strings = (
      'SELECT * FROM clientes WHERE ativo = 0')
    Left = 464
    Top = 96
  end
  object DataSourceClientesAtivos: TDataSource
    DataSet = SqlClientesAtivos
    Left = 600
    Top = 24
  end
  object DataSourceClientesInativos: TDataSource
    DataSet = SqlClientesInativos
    Left = 600
    Top = 96
  end
end
