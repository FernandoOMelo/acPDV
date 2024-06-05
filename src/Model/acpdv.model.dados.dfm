object dmDados: TdmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object cdsItens: TClientDataSet
    PersistDataPacket.Data = {
      B20000009619E0BD010000001800000005000000000003000000B20006434F44
      49474F0100490000000100055749445448020002006400044954454D04000100
      000000000944455343524943414F010049000000010005574944544802000200
      64000E56414C4F525F554E49544152494F080004000000010007535542545950
      450200490006004D6F6E6579000A5155414E5449444144450800040000000100
      07535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsItensCalcFields
    Left = 48
    Top = 32
    object cdsItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 100
    end
    object cdsItensITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cdsItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsItensVALOR_UNITARIO: TCurrencyField
      FieldName = 'VALOR_UNITARIO'
      EditFormat = 'R$#.##0,00'
    end
    object cdsItensQUANTIDADE: TCurrencyField
      FieldName = 'QUANTIDADE'
      EditFormat = '0.000'
    end
    object cdsItensSUB_TOTAL: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SUB_TOTAL'
      EditFormat = 'R$#.##0,00'
      Calculated = True
    end
    object cdsItensTOTAL: TAggregateField
      FieldName = 'TOTAL'
      DisplayName = ''
      Expression = 'SUM(VALOR_UNITARIO*QUANTIDADE)'
    end
  end
end
