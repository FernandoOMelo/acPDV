object FrameDinheiro: TFrameDinheiro
  Left = 0
  Top = 0
  Width = 491
  Height = 374
  TabOrder = 0
  object pnMain: TPanel
    Left = 0
    Top = 0
    Width = 491
    Height = 374
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 25
    Padding.Top = 144
    Padding.Right = 25
    TabOrder = 0
    ExplicitLeft = 256
    ExplicitTop = 240
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnTotalRecebido: TPanel
      Left = 25
      Top = 144
      Width = 441
      Height = 60
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 32
      ExplicitTop = 104
      ExplicitWidth = 425
      object lbTotalRecebido: TLabel
        Left = 0
        Top = 0
        Width = 226
        Height = 60
        Align = alLeft
        Caption = 'Total Recebido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6708059
        Font.Height = -33
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitHeight = 40
      end
      object edtPagamentoDinheiro: TEdit
        Left = 226
        Top = 0
        Width = 215
        Height = 60
        Align = alClient
        Alignment = taRightJustify
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6708059
        Font.Height = -33
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '0.00'
      end
    end
  end
end
