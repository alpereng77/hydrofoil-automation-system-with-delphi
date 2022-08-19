object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 442
  ClientWidth = 830
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label13: TLabel
    Left = 32
    Top = 274
    Width = 61
    Height = 13
    Caption = 'Aranacak Ad'
  end
  object Label1: TLabel
    Left = 240
    Top = 273
    Width = 58
    Height = 13
    Caption = 'Tarih Arama'
  end
  object Panel2: TPanel
    Left = 240
    Top = 292
    Width = 185
    Height = 124
    Color = clWhite
    ParentBackground = False
    TabOrder = 7
  end
  object Panel1: TPanel
    Left = 32
    Top = 293
    Width = 185
    Height = 124
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 8
    Width = 721
    Height = 249
    DataSource = DataSource1
    DrawingStyle = gdsGradient
    GradientStartColor = clCream
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = TURKISH_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Trebuchet MS'
    TitleFont.Style = [fsBold]
  end
  object Button1: TButton
    Left = 447
    Top = 289
    Width = 75
    Height = 127
    Caption = 'Geri d'#246'n'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 64
    Top = 315
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button2: TButton
    Left = 86
    Top = 358
    Width = 75
    Height = 25
    Caption = 'Arama Yap'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 272
    Top = 315
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Button3: TButton
    Left = 294
    Top = 358
    Width = 75
    Height = 25
    Caption = 'Arama Yap'
    TabOrder = 6
    OnClick = Button2Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Database1.mdb;Persi' +
      'st Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 784
    Top = 328
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Hasta_kayit'
    Left = 784
    Top = 376
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 728
    Top = 384
  end
end
