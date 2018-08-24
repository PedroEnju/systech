inherited F_Venda: TF_Venda
  Caption = 'Systech - Venda'
  OnShow = FormShow
  ExplicitWidth = 908
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btn_novo: TBitBtn
      Left = 13
      ExplicitLeft = 13
    end
    inherited btn_editar: TBitBtn
      Left = 116
      ExplicitLeft = 116
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Consultar: TPageControl
    ActivePage = TabSheet2
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 881
      ExplicitHeight = 414
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 881
      ExplicitHeight = 414
      object Label19: TLabel
        Left = 340
        Top = 258
        Width = 134
        Height = 19
        Caption = 'Itens da Venda.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 135
        Top = 129
        Width = 86
        Height = 13
        Caption = 'Data Finaliza'#231#227'o.:'
      end
      object Label12: TLabel
        Left = 19
        Top = 129
        Width = 64
        Height = 13
        Caption = 'Data Venda.:'
      end
      object Label16: TLabel
        Left = 177
        Top = 88
        Width = 110
        Height = 13
        Caption = 'Forma de Pagamento.:'
      end
      object Label17: TLabel
        Left = 672
        Top = 8
        Width = 114
        Height = 13
        Caption = 'Observa'#231#227'o da Venda.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 251
        Top = 129
        Width = 39
        Height = 13
        Caption = 'Status.:'
      end
      object Label9: TLabel
        Left = 19
        Top = 88
        Width = 52
        Height = 13
        Caption = 'ID Venda.:'
      end
      object Label20: TLabel
        Left = 19
        Top = 8
        Width = 55
        Height = 13
        Caption = 'ID Cliente.:'
      end
      object Label21: TLabel
        Left = 152
        Top = 8
        Width = 41
        Height = 13
        Caption = 'Cliente.:'
      end
      object Label22: TLabel
        Left = 463
        Top = 8
        Width = 117
        Height = 13
        Caption = 'Observa'#231#227'o do Cliente.:'
      end
      object Label2: TLabel
        Left = 19
        Top = 215
        Width = 64
        Height = 13
        Caption = 'Quantidade.:'
      end
      object Label10: TLabel
        Left = 19
        Top = 174
        Width = 44
        Height = 13
        Caption = 'ID Item.:'
      end
      object Label6: TLabel
        Left = 463
        Top = 174
        Width = 60
        Height = 13
        Caption = 'ID Produto.:'
      end
      object Label8: TLabel
        Left = 127
        Top = 215
        Width = 67
        Height = 13
        Caption = '% Desconto.:'
      end
      object Label3: TLabel
        Left = 215
        Top = 216
        Width = 72
        Height = 13
        Caption = 'Valor Unit'#225'rio.:'
      end
      object Label4: TLabel
        Left = 340
        Top = 216
        Width = 80
        Height = 13
        Caption = 'Valor Desconto.:'
      end
      object Label5: TLabel
        Left = 470
        Top = 215
        Width = 59
        Height = 13
        Caption = 'Valor Total.:'
      end
      object Label7: TLabel
        Left = 588
        Top = 174
        Width = 46
        Height = 13
        Caption = 'Produto.:'
      end
      object Label23: TLabel
        Left = 127
        Top = 174
        Width = 37
        Height = 13
        Caption = 'Grupo.:'
      end
      object Label24: TLabel
        Left = 293
        Top = 174
        Width = 59
        Height = 13
        Caption = 'Sub-Grupo.:'
      end
      object Label25: TLabel
        Left = 19
        Top = 48
        Width = 58
        Height = 13
        Caption = 'ID Usu'#225'rio.:'
      end
      object Label26: TLabel
        Left = 152
        Top = 48
        Width = 44
        Height = 13
        Caption = 'Usu'#225'rio.:'
      end
      object DBG_Lista: TDBGrid
        Left = 112
        Top = 283
        Width = 593
        Height = 123
        DataSource = DS_ItemVenda
        TabOrder = 15
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBG_ListaDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id_venda'
            Title.Alignment = taRightJustify
            Title.Caption = 'ID Venda'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_itemvenda'
            Title.Alignment = taRightJustify
            Title.Caption = 'ID ItemVenda'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'id_produto'
            Title.Alignment = taRightJustify
            Title.Caption = 'ID Produto'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Produto'
            Width = 275
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantidade'
            Title.Alignment = taRightJustify
            Title.Caption = 'Quantia'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorunitario'
            Title.Alignment = taRightJustify
            Title.Caption = 'V. Unit'#225'rio'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valordesconto'
            Title.Alignment = taRightJustify
            Title.Caption = 'V. Desconto'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valortotal'
            Title.Alignment = taRightJustify
            Title.Caption = 'V. Total'
            Width = 100
            Visible = True
          end>
      end
      object Btn_Adicionar: TBitBtn
        Left = 19
        Top = 283
        Width = 87
        Height = 43
        Caption = 'Adicionar'
        Enabled = False
        TabOrder = 12
        OnClick = Btn_AdicionarClick
      end
      object Btn_Remover: TBitBtn
        Left = 19
        Top = 376
        Width = 87
        Height = 30
        Caption = 'Remover'
        Enabled = False
        TabOrder = 14
        OnClick = Btn_RemoverClick
      end
      object Btn_Atualizar: TBitBtn
        Left = 19
        Top = 332
        Width = 87
        Height = 38
        Caption = 'Atualizar'
        Enabled = False
        TabOrder = 13
        OnClick = Btn_AtualizarClick
      end
      object Btn_FormaPagamento: TBitBtn
        Left = 426
        Top = 100
        Width = 25
        Height = 24
        TabOrder = 16
      end
      object CB_FormaPagamento: TComboBox
        Left = 177
        Top = 102
        Width = 249
        Height = 21
        TabOrder = 4
        OnEnter = CB_FormaPagamentoEnter
      end
      object CB_Status: TComboBox
        Left = 251
        Top = 144
        Width = 206
        Height = 21
        TabOrder = 5
      end
      object dtp_Finalizacao: TDateTimePicker
        Left = 135
        Top = 144
        Width = 110
        Height = 21
        Date = 36486.661948680560000000
        Time = 36486.661948680560000000
        TabOrder = 17
      end
      object dtp_Venda: TDateTimePicker
        Left = 19
        Top = 144
        Width = 110
        Height = 21
        Date = 36485.654628923620000000
        Time = 36485.654628923620000000
        Enabled = False
        ParseInput = True
        TabOrder = 18
      end
      object Edt_IDVenda: TEdit
        Left = 19
        Top = 102
        Width = 152
        Height = 21
        Alignment = taRightJustify
        Enabled = False
        TabOrder = 19
      end
      object MM_Observacao: TMemo
        Left = 672
        Top = 22
        Width = 185
        Height = 143
        TabOrder = 20
      end
      object Edt_IDCliente: TEdit
        Left = 19
        Top = 22
        Width = 102
        Height = 21
        Alignment = taRightJustify
        TabOrder = 0
      end
      object MM_ClienteObs: TMemo
        Left = 463
        Top = 22
        Width = 203
        Height = 143
        Enabled = False
        TabOrder = 21
      end
      object Edt_Qtde: TEdit
        Left = 19
        Top = 231
        Width = 102
        Height = 21
        Alignment = taRightJustify
        TabOrder = 10
        OnExit = Edt_QtdeExit
      end
      object Edt_IDItemVenda: TEdit
        Left = 19
        Top = 188
        Width = 102
        Height = 21
        Alignment = taRightJustify
        Enabled = False
        TabOrder = 22
      end
      object Edt_IDProduto: TEdit
        Left = 463
        Top = 188
        Width = 94
        Height = 21
        TabOrder = 8
      end
      object Edt_Desconto: TEdit
        Left = 127
        Top = 231
        Width = 82
        Height = 21
        Alignment = taRightJustify
        TabOrder = 11
        OnExit = Edt_DescontoExit
      end
      object Edt_VUnitario: TEdit
        Left = 215
        Top = 231
        Width = 119
        Height = 21
        Alignment = taRightJustify
        Enabled = False
        TabOrder = 23
      end
      object Edt_VDesconto: TEdit
        Left = 340
        Top = 231
        Width = 124
        Height = 21
        Alignment = taRightJustify
        Enabled = False
        TabOrder = 24
      end
      object Edt_VTotal: TEdit
        Left = 470
        Top = 231
        Width = 138
        Height = 21
        Alignment = taRightJustify
        Enabled = False
        TabOrder = 25
      end
      object Btn_PesqProduto: TBitBtn
        Left = 557
        Top = 187
        Width = 25
        Height = 23
        TabOrder = 26
      end
      object CB_Produto: TComboBox
        Left = 588
        Top = 188
        Width = 269
        Height = 21
        TabOrder = 9
        OnEnter = CB_ProdutoEnter
        OnExit = CB_ProdutoExit
      end
      object CB_Grupo: TComboBox
        Left = 127
        Top = 188
        Width = 160
        Height = 21
        TabOrder = 6
        OnEnter = CB_GrupoEnter
      end
      object CB_SubGrupo: TComboBox
        Left = 293
        Top = 188
        Width = 164
        Height = 21
        TabOrder = 7
        OnEnter = CB_SubGrupoEnter
      end
      object CB_Cliente: TComboBox
        Left = 152
        Top = 22
        Width = 303
        Height = 21
        TabOrder = 1
        OnEnter = CB_ClienteEnter
      end
      object Btn_Cliente: TBitBtn
        Left = 121
        Top = 20
        Width = 26
        Height = 24
        TabOrder = 27
        OnClick = Btn_ClienteClick
      end
      object Edt_IDUsuario: TEdit
        Left = 19
        Top = 61
        Width = 102
        Height = 21
        Alignment = taRightJustify
        TabOrder = 2
      end
      object Btn_Usuario: TBitBtn
        Left = 121
        Top = 59
        Width = 25
        Height = 24
        TabOrder = 28
      end
      object CB_Usuario: TComboBox
        Left = 152
        Top = 61
        Width = 303
        Height = 21
        TabOrder = 3
      end
      object GB_Total: TGroupBox
        Left = 711
        Top = 258
        Width = 146
        Height = 148
        Caption = 'Total da Venda.:'
        Enabled = False
        TabOrder = 29
        object Label13: TLabel
          Left = 3
          Top = 22
          Width = 38
          Height = 13
          Caption = 'Venda.:'
        end
        object Label14: TLabel
          Left = 3
          Top = 103
          Width = 53
          Height = 13
          Caption = 'Desconto.:'
        end
        object Label15: TLabel
          Left = 3
          Top = 62
          Width = 46
          Height = 13
          Caption = 'Produto.:'
        end
        object Edt_TDesconto: TEdit
          Left = 3
          Top = 116
          Width = 135
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          TabOrder = 0
        end
        object Edt_TProduto: TEdit
          Left = 3
          Top = 74
          Width = 135
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          TabOrder = 1
        end
        object Edt_TVenda: TEdit
          Left = 3
          Top = 35
          Width = 134
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          TabOrder = 2
        end
      end
    end
  end
  object FDQ_ItemVendaMax: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select max(id_itemvenda) from itemvenda;')
    Left = 692
    Top = 15
    object FDQ_ItemVendaMaxmaxid_itemvenda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'max(id_itemvenda)'
      Origin = '`max(id_itemvenda)`'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DS_ItemVenda: TDataSource
    DataSet = FDQ_ItemVenda
    Left = 620
    Top = 47
  end
  object FDQ_ItemVenda: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select'
      ' iv.id_venda,'
      ' iv.id_itemvenda,'
      ' iv.id_produto,'
      ' p.nome,'
      ' iv.quantidade,'
      ' iv.valorunitario,'
      ' iv.valordesconto,'
      ' iv.valortotal'
      'from itemvenda iv'
      '  inner join produto p'
      '    on p.id_produto = iv.id_produto'
      '    and id_venda = (:venda);')
    Left = 556
    Top = 15
    ParamData = <
      item
        Name = 'VENDA'
        DataType = ftWideString
        ParamType = ptInput
        Value = '1'
      end>
    object FDQ_ItemVendaid_venda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_venda'
      Origin = 'id_venda'
    end
    object FDQ_ItemVendaid_itemvenda: TFDAutoIncField
      FieldName = 'id_itemvenda'
      Origin = 'id_itemvenda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_ItemVendaid_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_produto'
      Origin = 'id_produto'
    end
    object FDQ_ItemVendanome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FDQ_ItemVendaquantidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
    object FDQ_ItemVendavalorunitario: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valorunitario'
      Origin = 'valorunitario'
    end
    object FDQ_ItemVendavalordesconto: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valordesconto'
      Origin = 'valordesconto'
    end
    object FDQ_ItemVendavalortotal: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valortotal'
      Origin = 'valortotal'
    end
  end
  object FDQ_VerificaVenda: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select * from venda where id_venda = (:venda);')
    Left = 388
    Top = 399
    ParamData = <
      item
        Name = 'VENDA'
        DataType = ftWideString
        ParamType = ptInput
        Value = '1'
      end>
  end
  object FDQ_FormaPagamento: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select * from formadepagamento;')
    Left = 556
    Top = 407
    object FDQ_FormaPagamentoid_formadepagamento: TFDAutoIncField
      FieldName = 'id_formadepagamento'
      Origin = 'id_formadepagamento'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_FormaPagamentonome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 45
    end
    object FDQ_FormaPagamentostatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
      FixedChar = True
      Size = 1
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQ_FormaPagamento
    ScopeMappings = <>
    Left = 480
    Top = 392
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 300
    Top = 405
    object LinkListControlToField1: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'nome'
      Control = CB_FormaPagamento
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkListControlToField2: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'nome'
      Control = CB_Grupo
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkListControlToField3: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
      FieldName = 'nome'
      Control = CB_SubGrupo
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkListControlToField4: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB4
      FieldName = 'nome'
      Control = CB_Produto
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB4
      FieldName = 'id_produto'
      Control = Edt_IDProduto
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB4
      FieldName = 'valorvenda'
      Control = Edt_VUnitario
      Track = True
    end
    object LinkListControlToField5: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB5
      FieldName = 'nome_razaosocial'
      Control = CB_Cliente
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB5
      FieldName = 'id_cliente'
      Control = Edt_IDCliente
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB5
      FieldName = 'observacao'
      Control = MM_ClienteObs
      Track = False
    end
    object LinkListControlToField6: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB6
      FieldName = 'nome'
      Control = CB_Usuario
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB6
      FieldName = 'id_usuario'
      Control = Edt_IDUsuario
      Track = True
    end
  end
  object FDQ_Grupo: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select * from grupo where status = '#39'A'#39';')
    Left = 220
    Top = 255
    object FDQ_Grupoid_grupo: TIntegerField
      FieldName = 'id_grupo'
      Origin = 'id_grupo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_Grupodata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      Required = True
    end
    object FDQ_Gruponome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object FDQ_Grupostatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object FDQ_SubGrupo: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select * from subgrupo '
      'where'
      ' status = '#39'A'#39' '
      'and '
      ' id_grupo = (:grupo)'
      'or'
      ' id_subgrupo = (:subgrupo);')
    Left = 404
    Top = 263
    ParamData = <
      item
        Name = 'GRUPO'
        DataType = ftWideString
        ParamType = ptInput
        Value = '1'
      end
      item
        Name = 'SUBGRUPO'
        DataType = ftWideString
        ParamType = ptInput
        Value = '0'
      end>
    object FDQ_SubGrupoid_subgrupo: TFDAutoIncField
      FieldName = 'id_subgrupo'
      Origin = 'id_subgrupo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_SubGrupoid_grupo: TIntegerField
      FieldName = 'id_grupo'
      Origin = 'id_grupo'
      Required = True
    end
    object FDQ_SubGrupodatacadastro: TDateField
      FieldName = 'datacadastro'
      Origin = 'datacadastro'
      Required = True
    end
    object FDQ_SubGruponome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object FDQ_SubGrupostatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
      FixedChar = True
      Size = 1
    end
  end
  object FDQ_Produto: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select * from produto'
      'where'
      ' id_subgrupo = (:subgrupo)'
      'and'
      ' status = '#39'A'#39';')
    Left = 732
    Top = 271
    ParamData = <
      item
        Name = 'SUBGRUPO'
        DataType = ftWideString
        ParamType = ptInput
        Value = '1'
      end>
    object FDQ_Produtoid_produto: TFDAutoIncField
      FieldName = 'id_produto'
      Origin = 'id_produto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_Produtoid_marca: TIntegerField
      FieldName = 'id_marca'
      Origin = 'id_marca'
      Required = True
    end
    object FDQ_Produtoid_subgrupo: TIntegerField
      FieldName = 'id_subgrupo'
      Origin = 'id_subgrupo'
      Required = True
    end
    object FDQ_Produtodatacadastro: TDateField
      FieldName = 'datacadastro'
      Origin = 'datacadastro'
      Required = True
    end
    object FDQ_Produtocodigodebarras: TStringField
      FieldName = 'codigodebarras'
      Origin = 'codigodebarras'
      Required = True
      Size = 100
    end
    object FDQ_Produtonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 45
    end
    object FDQ_Produtonomecomum: TStringField
      FieldName = 'nomecomum'
      Origin = 'nomecomum'
      Required = True
      Size = 45
    end
    object FDQ_Produtopeso: TStringField
      FieldName = 'peso'
      Origin = 'peso'
      Required = True
      Size = 45
    end
    object FDQ_Produtomedidas: TStringField
      FieldName = 'medidas'
      Origin = 'medidas'
      Required = True
      Size = 45
    end
    object FDQ_Produtounidade: TStringField
      FieldName = 'unidade'
      Origin = 'unidade'
      Required = True
      Size = 45
    end
    object FDQ_Produtomodelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'modelo'
      Origin = 'modelo'
      Size = 45
    end
    object FDQ_Produtonumfabricante: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numfabricante'
      Origin = 'numfabricante'
      Size = 45
    end
    object FDQ_Produtoestoqueatual: TIntegerField
      FieldName = 'estoqueatual'
      Origin = 'estoqueatual'
      Required = True
    end
    object FDQ_Produtoestoqueminimo: TIntegerField
      FieldName = 'estoqueminimo'
      Origin = 'estoqueminimo'
      Required = True
    end
    object FDQ_Produtoultimocusto: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'ultimocusto'
      Origin = 'ultimocusto'
    end
    object FDQ_Produtovalorvenda: TSingleField
      FieldName = 'valorvenda'
      Origin = 'valorvenda'
      Required = True
    end
    object FDQ_Produtomargemlucro: TSingleField
      FieldName = 'margemlucro'
      Origin = 'margemlucro'
      Required = True
    end
    object FDQ_Produtodescontomax: TSingleField
      FieldName = 'descontomax'
      Origin = 'descontomax'
      Required = True
    end
    object FDQ_Produtoorigem: TIntegerField
      FieldName = 'origem'
      Origin = 'origem'
      Required = True
    end
    object FDQ_Produtoobservacao: TStringField
      FieldName = 'observacao'
      Origin = 'observacao'
      Required = True
      Size = 45
    end
    object FDQ_Produtoimagem: TBlobField
      FieldName = 'imagem'
      Origin = 'imagem'
      Required = True
    end
    object FDQ_Produtostatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = FDQ_Grupo
    ScopeMappings = <>
    Left = 192
    Top = 256
  end
  object BindSourceDB3: TBindSourceDB
    DataSet = FDQ_SubGrupo
    ScopeMappings = <>
    Left = 376
    Top = 264
  end
  object BindSourceDB4: TBindSourceDB
    DataSet = FDQ_Produto
    ScopeMappings = <>
    Left = 704
    Top = 272
  end
  object FDQ_Cliente: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select * from cliente'
      'where status = '#39'A'#39';')
    Left = 332
    Top = 103
    object FDQ_Clienteid_cliente: TFDAutoIncField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_Clientenome_razaosocial: TStringField
      FieldName = 'nome_razaosocial'
      Origin = 'nome_razaosocial'
      Required = True
      Size = 60
    end
    object FDQ_Clientetipopessoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipopessoa'
      Origin = 'tipopessoa'
      FixedChar = True
      Size = 1
    end
    object FDQ_Clientecpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Required = True
      Size = 15
    end
    object FDQ_Clienterg_ie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg_ie'
      Origin = 'rg_ie'
      Size = 15
    end
    object FDQ_Clientetelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 15
    end
    object FDQ_Clientecelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      Size = 15
    end
    object FDQ_Clienteendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 60
    end
    object FDQ_Clientenumero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
      Size = 10
    end
    object FDQ_Clientebairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object FDQ_Clientecomplemento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 45
    end
    object FDQ_Clientecep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      FixedChar = True
      Size = 8
    end
    object FDQ_Clienteid_cidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
    end
    object FDQ_Clientepais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pais'
      Origin = 'pais'
    end
    object FDQ_Clienteemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 45
    end
    object FDQ_Clientenomepai: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomepai'
      Origin = 'nomepai'
      Size = 45
    end
    object FDQ_Clientenomemae: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomemae'
      Origin = 'nomemae'
      Size = 45
    end
    object FDQ_Clientegenero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'genero'
      Origin = 'genero'
      FixedChar = True
      Size = 2
    end
    object FDQ_Clienteestadocivil: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estadocivil'
      Origin = 'estadocivil'
      FixedChar = True
      Size = 5
    end
    object FDQ_Clientegrauescolaridade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grauescolaridade'
      Origin = 'grauescolaridade'
    end
    object FDQ_Clientelocaldetrabalho: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'localdetrabalho'
      Origin = 'localdetrabalho'
      Size = 45
    end
    object FDQ_Clienteid_cargo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_cargo'
      Origin = 'id_cargo'
    end
    object FDQ_Clienterenda: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'renda'
      Origin = 'renda'
      Precision = 8
      Size = 2
    end
    object FDQ_Clientecontatotrabalho: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contatotrabalho'
      Origin = 'contatotrabalho'
      Size = 30
    end
    object FDQ_Clienteid_referencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_referencia'
      Origin = 'id_referencia'
    end
    object FDQ_Clientedatadecadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datadecadastro'
      Origin = 'datadecadastro'
    end
    object FDQ_Clientedatanascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datanascimento'
      Origin = 'datanascimento'
    end
    object FDQ_Clientestatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
      FixedChar = True
      Size = 2
    end
    object FDQ_Clienteobservacao: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'observacao'
      Origin = 'observacao'
      BlobType = ftMemo
    end
    object FDQ_Clienteautorizacoes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'autorizacoes'
      Origin = 'autorizacoes'
      Size = 45
    end
    object FDQ_Clientevalormaxcred: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valormaxcred'
      Origin = 'valormaxcred'
      Precision = 8
      Size = 2
    end
    object FDQ_Clientenaturalidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'naturalidade'
      Origin = 'naturalidade'
      Size = 45
    end
    object FDQ_Clientenacionalidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nacionalidade'
      Origin = 'nacionalidade'
      Size = 45
    end
  end
  object BindSourceDB5: TBindSourceDB
    DataSet = FDQ_Cliente
    ScopeMappings = <>
    Left = 304
    Top = 104
  end
  object FDQ_ValoresTotais: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select '
      ' count(id_itemvenda),'
      ' avg(valordesconto),'
      ' avg(valortotal) '
      'from itemvenda '
      ' where id_venda = (:venda);')
    Left = 644
    Top = 327
    ParamData = <
      item
        Name = 'VENDA'
        DataType = ftWideString
        ParamType = ptInput
        Value = '1'
      end>
    object FDQ_ValoresTotaiscountid_itemvenda: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'count(id_itemvenda)'
      Origin = '`count(id_itemvenda)`'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQ_ValoresTotaisavgvalordesconto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'avg(valordesconto)'
      Origin = '`avg(valordesconto)`'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQ_ValoresTotaisavgvalortotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'avg(valortotal)'
      Origin = '`avg(valortotal)`'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQ_Usuario: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select * from usuario where venda = '#39'Y'#39';')
    Left = 388
    Top = 143
    object FDQ_Usuarioid_usuario: TFDAutoIncField
      FieldName = 'id_usuario'
      Origin = 'id_usuario'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_Usuarionome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 45
    end
    object FDQ_Usuariostatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FDQ_Usuariosenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 45
    end
    object FDQ_Usuarioid_funcionario: TIntegerField
      FieldName = 'id_funcionario'
      Origin = 'id_funcionario'
      Required = True
    end
    object FDQ_Usuariofinanceiro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'financeiro'
      Origin = 'financeiro'
      FixedChar = True
      Size = 1
    end
    object FDQ_Usuariovenda: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'venda'
      Origin = 'venda'
      FixedChar = True
      Size = 1
    end
    object FDQ_Usuariocompra: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'compra'
      Origin = 'compra'
      FixedChar = True
      Size = 1
    end
    object FDQ_Usuariocaixa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'caixa'
      Origin = 'caixa'
      FixedChar = True
      Size = 1
    end
    object FDQ_Usuariocontasreceber: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contasreceber'
      Origin = 'contasreceber'
      FixedChar = True
      Size = 1
    end
    object FDQ_Usuariorelatoriogeral: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'relatoriogeral'
      Origin = 'relatoriogeral'
      FixedChar = True
      Size = 1
    end
    object FDQ_Usuariorelatoriogestao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'relatoriogestao'
      Origin = 'relatoriogestao'
      FixedChar = True
      Size = 1
    end
    object FDQ_Usuariocasdastroproduto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'casdastroproduto'
      Origin = 'casdastroproduto'
      FixedChar = True
      Size = 1
    end
    object FDQ_Usuariocadastrousuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cadastrousuario'
      Origin = 'cadastrousuario'
      FixedChar = True
      Size = 1
    end
    object FDQ_Usuariocadastrofuncionario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cadastrofuncionario'
      Origin = 'cadastrofuncionario'
      FixedChar = True
      Size = 1
    end
  end
  object BindSourceDB6: TBindSourceDB
    DataSet = FDQ_Usuario
    ScopeMappings = <>
    Left = 360
    Top = 144
  end
  object FDQ_ItemRemove: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select '
      ' iv.id_itemvenda,'
      ' iv.id_produto,'
      ' p.nome as nomeProduto,'
      ' iv.quantidade,'
      ' iv.valorunitario,'
      ' iv.valordesconto,'
      ' iv.valortotal,'
      ' sg.nome as nomeSubGrupo,'
      ' g.nome as nomeGrupo'
      'from itemvenda iv'
      ' inner join produto p'
      '  on p.id_produto = iv.id_produto'
      ' inner join subgrupo sg'
      '  on sg.id_subgrupo = p.id_subgrupo'
      ' inner join grupo g'
      '  on g.id_grupo = sg.id_grupo'
      'where'
      ' id_venda = (:venda);')
    Left = 156
    Top = 399
    ParamData = <
      item
        Name = 'VENDA'
        DataType = ftWideString
        ParamType = ptInput
        Value = '1'
      end>
    object FDQ_ItemRemoveid_itemvenda: TFDAutoIncField
      FieldName = 'id_itemvenda'
      Origin = 'id_itemvenda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_ItemRemoveid_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_produto'
      Origin = 'id_produto'
    end
    object FDQ_ItemRemovenomeProduto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeProduto'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object FDQ_ItemRemovequantidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
    object FDQ_ItemRemovevalorunitario: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valorunitario'
      Origin = 'valorunitario'
    end
    object FDQ_ItemRemovevalordesconto: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valordesconto'
      Origin = 'valordesconto'
    end
    object FDQ_ItemRemovevalortotal: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valortotal'
      Origin = 'valortotal'
    end
    object FDQ_ItemRemovenomeSubGrupo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeSubGrupo'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FDQ_ItemRemovenomeGrupo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeGrupo'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
end
