object dtmPrincipal: TdtmPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 654
  Width = 659
  object conPrincipal: TFDConnection
    Params.Strings = (
      'DriverID=MySQL'
      'Database=dipapeldb_hm'
      'User_Name=dipapeldb_hm'
      'Password=metal001'
      'Server=dipapeldb_hm.mysql.dbaas.com.br'
      'ApplicationName=teste')
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 256
    Top = 16
  end
  object qryGeral: TFDQuery
    Connection = conPrincipal
    Left = 408
    Top = 184
  end
  object qryInsert: TFDQuery
    Connection = conPrincipal
    Left = 408
    Top = 112
  end
  object stpGeral: TFDStoredProc
    Connection = conPrincipal
    Left = 408
    Top = 40
  end
  object qryVwPedidosHis: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'select * from vwpedidoshis'
      'order by data_historico desc')
    Left = 32
    Top = 152
    object qryVwPedidosHisPEDIDO_ELO7: TStringField
      DisplayLabel = 'Pedido ELO7'
      FieldName = 'PEDIDO_ELO7'
      Origin = 'PEDIDO_ELO7'
      Size = 15
    end
    object qryVwPedidosHisTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object qryVwPedidosHisCAMPO: TStringField
      DisplayLabel = 'Campo'
      FieldName = 'CAMPO'
      Origin = 'CAMPO'
      Size = 50
    end
    object qryVwPedidosHisVALOR_ANTIGO: TStringField
      DisplayLabel = 'Valor Antigo'
      FieldName = 'VALOR_ANTIGO'
      Origin = 'VALOR_ANTIGO'
      Size = 50
    end
    object qryVwPedidosHisVALOR_NOVO: TStringField
      DisplayLabel = 'Valor Novo'
      FieldName = 'VALOR_NOVO'
      Origin = 'VALOR_NOVO'
      Size = 50
    end
    object qryVwPedidosHisDATA_HISTORICO: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Hist'#243'rico'
      FieldName = 'DATA_HISTORICO'
      ProviderFlags = []
    end
  end
  object dtsVwPedidosHis: TDataSource
    AutoEdit = False
    DataSet = qryVwPedidosHis
    Left = 128
    Top = 152
  end
  object qryResultadoImport: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'select * from vwpedidoshis a'
      'where DATA_HISTORICO >=  date_add(now(), INTERVAL -5 DAY)'
      'order by data_historico desc')
    Left = 40
    Top = 216
    object StringField1: TStringField
      DisplayLabel = 'Pedido ELO7'
      FieldName = 'PEDIDO_ELO7'
      Origin = 'PEDIDO_ELO7'
      Size = 15
    end
    object StringField2: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object StringField3: TStringField
      DisplayLabel = 'Campo'
      FieldName = 'CAMPO'
      Origin = 'CAMPO'
      Size = 50
    end
    object StringField4: TStringField
      DisplayLabel = 'Valor Antigo'
      FieldName = 'VALOR_ANTIGO'
      Origin = 'VALOR_ANTIGO'
      Size = 50
    end
    object StringField5: TStringField
      DisplayLabel = 'Valor Novo'
      FieldName = 'VALOR_NOVO'
      Origin = 'VALOR_NOVO'
      Size = 50
    end
    object qryResultadoImportDATA_HISTORICO: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Hist'#243'rico'
      FieldName = 'DATA_HISTORICO'
      Origin = 'DATA_HISTORICO'
    end
  end
  object dtsResultadoImport: TDataSource
    AutoEdit = False
    DataSet = qryResultadoImport
    Left = 144
    Top = 216
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = '.\..\lib\libmysql.dll'
    Left = 136
    Top = 16
  end
  object qryPedidos: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'select * from tblpedidos')
    Left = 48
    Top = 312
    object qryPedidosIDPEDIDO: TFDAutoIncField
      FieldName = 'IDPEDIDO'
      Origin = 'IDPEDIDO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPedidosPEDIDO_ELO7: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PEDIDO_ELO7'
      Origin = 'PEDIDO_ELO7'
      Size = 15
    end
    object qryPedidosSTATUS_ELO7: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_ELO7'
      Origin = 'STATUS_ELO7'
      Size = 50
    end
    object qryPedidosDATA_PEDIDO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_PEDIDO'
      Origin = 'DATA_PEDIDO'
    end
    object qryPedidosTOTAL_ITENS: TSmallintField
      FieldName = 'TOTAL_ITENS'
      Origin = 'TOTAL_ITENS'
      Required = True
    end
    object qryPedidosVALOR_TOTAL: TBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Required = True
      Precision = 15
      Size = 2
    end
    object qryPedidosTIPO_FRETE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_FRETE'
      Origin = 'TIPO_FRETE'
      Size = 50
    end
    object qryPedidosVALOR_FRETE: TBCDField
      FieldName = 'VALOR_FRETE'
      Origin = 'VALOR_FRETE'
      Required = True
      Precision = 15
      Size = 2
    end
    object qryPedidosCOMPRADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMPRADOR'
      Origin = 'COMPRADOR'
      Size = 100
    end
    object qryPedidosITENS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ITENS'
      Origin = 'ITENS'
      Size = 250
    end
    object qryPedidosIDPEDIDOSCFG: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDPEDIDOSCFG'
      Origin = 'IDPEDIDOSCFG'
    end
    object qryPedidosIDSTATUSPEDIDO: TIntegerField
      FieldName = 'IDSTATUSPEDIDO'
      Origin = 'IDSTATUSPEDIDO'
      Required = True
    end
    object qryPedidosDATA_IMPORTACAO: TDateField
      FieldName = 'DATA_IMPORTACAO'
      Origin = 'DATA_IMPORTACAO'
      Required = True
    end
  end
  object cdsPedidosHis: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidosHis'
    AfterPost = cdsPedidosHisAfterPost
    Left = 48
    Top = 368
    object cdsPedidosHisIDPEDIDOHIS: TAutoIncField
      FieldName = 'IDPEDIDOHIS'
      ReadOnly = True
    end
    object cdsPedidosHisIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      Required = True
    end
    object cdsPedidosHisVALOR_ANTIGO: TStringField
      FieldName = 'VALOR_ANTIGO'
      Size = 50
    end
    object cdsPedidosHisVALOR_NOVO: TStringField
      FieldName = 'VALOR_NOVO'
      Size = 50
    end
    object cdsPedidosHisDATA_HISTORICO: TDateTimeField
      FieldName = 'DATA_HISTORICO'
    end
    object cdsPedidosHisTIPO_ALTERACAO: TStringField
      FieldName = 'TIPO_ALTERACAO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidosHisCAMPO: TStringField
      FieldName = 'CAMPO'
      Size = 50
    end
  end
  object qryPedidosHis: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'select * from tblpedidoshis')
    Left = 152
    Top = 368
    object qryPedidosHisIDPEDIDOHIS: TFDAutoIncField
      FieldName = 'IDPEDIDOHIS'
      Origin = 'IDPEDIDOHIS'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPedidosHisIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      Origin = 'IDPEDIDO'
      Required = True
    end
    object qryPedidosHisVALOR_ANTIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ANTIGO'
      Origin = 'VALOR_ANTIGO'
      Size = 50
    end
    object qryPedidosHisVALOR_NOVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_NOVO'
      Origin = 'VALOR_NOVO'
      Size = 50
    end
    object qryPedidosHisDATA_HISTORICO: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_HISTORICO'
      Origin = 'DATA_HISTORICO'
    end
    object qryPedidosHisTIPO_ALTERACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_ALTERACAO'
      Origin = 'TIPO_ALTERACAO'
      FixedChar = True
      Size = 1
    end
    object qryPedidosHisCAMPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAMPO'
      Origin = 'CAMPO'
      Size = 50
    end
  end
  object dspPedidosHis: TDataSetProvider
    DataSet = qryPedidosHis
    Left = 256
    Top = 368
  end
  object cdsLogs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLogs'
    AfterPost = cdsLogsAfterPost
    Left = 48
    Top = 424
    object cdsLogsIDLOG: TAutoIncField
      FieldName = 'IDLOG'
      ReadOnly = True
    end
    object cdsLogsDATA_LOG: TDateTimeField
      FieldName = 'DATA_LOG'
    end
    object cdsLogsARQUIVO: TStringField
      FieldName = 'ARQUIVO'
      Size = 200
    end
    object cdsLogsREGISTROS_INSERIDOS: TSmallintField
      FieldName = 'REGISTROS_INSERIDOS'
      Required = True
    end
    object cdsLogsREGISTROS_ATUALIZADOS: TSmallintField
      FieldName = 'REGISTROS_ATUALIZADOS'
      Required = True
    end
  end
  object qryLogs: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'select * from tbllogs')
    Left = 152
    Top = 424
    object qryLogsIDLOG: TFDAutoIncField
      FieldName = 'IDLOG'
      Origin = 'IDLOG'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryLogsDATA_LOG: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_LOG'
      Origin = 'DATA_LOG'
    end
    object qryLogsARQUIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ARQUIVO'
      Origin = 'ARQUIVO'
      Size = 50
    end
    object qryLogsREGISTROS_INSERIDOS: TSmallintField
      FieldName = 'REGISTROS_INSERIDOS'
      Origin = 'REGISTROS_INSERIDOS'
      Required = True
    end
    object qryLogsREGISTROS_ATUALIZADOS: TSmallintField
      FieldName = 'REGISTROS_ATUALIZADOS'
      Origin = 'REGISTROS_ATUALIZADOS'
      Required = True
    end
  end
  object dspLogs: TDataSetProvider
    DataSet = qryLogs
    Left = 256
    Top = 424
  end
  object cdsSelect: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSelect'
    AfterPost = cdsSelectAfterPost
    Left = 48
    Top = 536
  end
  object qrySelect: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'select * from tbllogs')
    Left = 152
    Top = 536
  end
  object dspSelect: TDataSetProvider
    DataSet = qrySelect
    Left = 256
    Top = 536
  end
  object cdsConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConfig'
    AfterPost = cdsConfigAfterPost
    Left = 48
    Top = 480
    object cdsConfigIDCONFIG: TAutoIncField
      FieldName = 'IDCONFIG'
      ReadOnly = True
    end
    object cdsConfigPASTA_ORIGEM: TStringField
      FieldName = 'PASTA_ORIGEM'
      Size = 50
    end
    object cdsConfigPASTA_DESTINO: TStringField
      FieldName = 'PASTA_DESTINO'
      Size = 50
    end
  end
  object qryConfig: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'select * from tblconfig')
    Left = 152
    Top = 480
    object qryConfigIDCONFIG: TFDAutoIncField
      FieldName = 'IDCONFIG'
      Origin = 'IDCONFIG'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryConfigPASTA_ORIGEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PASTA_ORIGEM'
      Origin = 'PASTA_ORIGEM'
      Size = 50
    end
    object qryConfigPASTA_DESTINO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PASTA_DESTINO'
      Origin = 'PASTA_DESTINO'
      Size = 50
    end
  end
  object dspConfig: TDataSetProvider
    DataSet = qryConfig
    Left = 256
    Top = 480
  end
  object dtsConfig: TDataSource
    DataSet = cdsConfig
    Left = 336
    Top = 480
  end
  object cdsPedidosPos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidosPos'
    AfterPost = cdsPedidosPosAfterPost
    Left = 48
    Top = 592
    object cdsPedidosPosIDPEDIDOSPOS: TAutoIncField
      FieldName = 'IDPEDIDOSPOS'
      ReadOnly = True
    end
    object cdsPedidosPosIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      Required = True
    end
    object cdsPedidosPosPOSICAO: TSmallintField
      FieldName = 'POSICAO'
      Required = True
    end
  end
  object qryPedidosPos: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'select * from tblpedidospos')
    Left = 152
    Top = 592
    object qryPedidosPosIDPEDIDOSPOS: TFDAutoIncField
      FieldName = 'IDPEDIDOSPOS'
      ReadOnly = True
    end
    object qryPedidosPosIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
      Origin = 'IDPEDIDO'
      Required = True
    end
    object qryPedidosPosPOSICAO: TSmallintField
      FieldName = 'POSICAO'
      Origin = 'POSICAO'
      Required = True
    end
  end
  object dspPedidosPos: TDataSetProvider
    DataSet = qryPedidosPos
    Left = 256
    Top = 592
  end
  object stpInsereAtualizaPedidos: TFDStoredProc
    Connection = conPrincipal
    StoredProcName = 'spinsere_atualiza_pedidos'
    Left = 480
    Top = 296
    ParamData = <
      item
        Position = 1
        Name = 'pPEDIDO_ELO7'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 2
        Name = 'pSTATUS_ELO7'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 3
        Name = 'pDATA_PEDIDO'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'pTOTAL_ITENS'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'pVALOR_TOTAL'
        DataType = ftBCD
        Precision = 15
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'pTIPO_FRETE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 7
        Name = 'pVALOR_FRETE'
        DataType = ftBCD
        Precision = 15
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'pCOMPRADOR'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 9
        Name = 'RESULTADO'
        DataType = ftInteger
        ParamType = ptOutput
      end
      item
        Position = 10
        Name = 'RESULTADO_STR'
        DataType = ftString
        ParamType = ptOutput
        Size = 100
      end>
  end
  object dtsPedidos: TDataSource
    AutoEdit = False
    DataSet = qryPedidos
    Left = 152
    Top = 312
  end
end
