object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Clientes'
  ClientHeight = 436
  ClientWidth = 632
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object LabelNome: TLabel
    Left = 16
    Top = 56
    Width = 51
    Height = 23
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object LabelAtivo: TLabel
    Left = 16
    Top = 136
    Width = 43
    Height = 23
    Caption = 'Ativo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object LabelCodigo: TLabel
    Left = 16
    Top = 16
    Width = 59
    Height = 23
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object LabelEndereco: TLabel
    Left = 16
    Top = 96
    Width = 75
    Height = 23
    Caption = 'Endere'#231'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object BtnConsultar: TButton
    Left = 241
    Top = 16
    Width = 75
    Height = 25
    Caption = '&Consultar'
    TabOrder = 1
    OnClick = BtnConsultarClick
  end
  object BtnNovo: TButton
    Left = 540
    Top = 16
    Width = 75
    Height = 25
    Caption = '&Novo'
    TabOrder = 2
    OnClick = BtnNovoClick
  end
  object BtnAlterar: TButton
    Left = 540
    Top = 56
    Width = 75
    Height = 25
    Caption = '&Alterar'
    TabOrder = 3
    OnClick = BtnAlterarClick
  end
  object BtnExcluir: TButton
    Left = 540
    Top = 97
    Width = 75
    Height = 25
    Caption = '&Excluir'
    TabOrder = 4
    OnClick = BtnExcluirClick
  end
  object DBTabela: TDBGrid
    Left = 16
    Top = 180
    Width = 489
    Height = 209
    DataSource = dm.DataSourceClientes
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Title.Caption = 'Endere'#231'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ativo'
        Title.Caption = 'Ativo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 46
        Visible = True
      end>
  end
  object BtnImprimir: TButton
    Left = 540
    Top = 137
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 6
    OnClick = BtnImprimirClick
  end
  object BtnSair: TButton
    Left = 540
    Top = 348
    Width = 75
    Height = 41
    Caption = '&Sair'
    TabOrder = 7
    OnClick = BtnSairClick
  end
  object InputCodigo: TEdit
    Left = 104
    Top = 16
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object BtnPrimeiro: TButton
    Left = 64
    Top = 401
    Width = 97
    Height = 25
    Caption = 'Primeiro'
    TabOrder = 8
    OnClick = BtnPrimeiroClick
  end
  object BtnAnterior: TButton
    Left = 160
    Top = 401
    Width = 97
    Height = 25
    Caption = 'Anterior'
    TabOrder = 9
    OnClick = BtnAnteriorClick
  end
  object BtnProximo: TButton
    Left = 257
    Top = 401
    Width = 97
    Height = 25
    Caption = 'Pr'#243'ximo'
    TabOrder = 10
    OnClick = BtnProximoClick
  end
  object BtnUltimo: TButton
    Left = 353
    Top = 401
    Width = 97
    Height = 25
    Caption = #218'ltimo'
    TabOrder = 11
    OnClick = BtnUltimoClick
  end
  object DBInputNome: TDBEdit
    Left = 104
    Top = 56
    Width = 401
    Height = 23
    DataField = 'nome'
    DataSource = dm.DataSourceClientes
    Enabled = False
    TabOrder = 12
  end
  object DBInputEndereco: TDBEdit
    Left = 104
    Top = 96
    Width = 401
    Height = 23
    DataField = 'endereco'
    DataSource = dm.DataSourceClientes
    Enabled = False
    TabOrder = 13
  end
  object DBCheckBox: TDBCheckBox
    Left = 104
    Top = 138
    Width = 17
    Height = 17
    DataField = 'ativo'
    DataSource = dm.DataSourceClientes
    TabOrder = 14
  end
  object BtnSalvar: TButton
    Left = 295
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 15
    OnClick = BtnSalvarClick
  end
  object BtnCancelar: TButton
    Left = 214
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 16
    OnClick = BtnCancelarClick
  end
end
