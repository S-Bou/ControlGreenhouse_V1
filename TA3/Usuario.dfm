object VPrincipal: TVPrincipal
  Left = 192
  Top = 125
  Width = 341
  Height = 483
  Caption = 'Control De Tarjeta'
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 64
    Width = 146
    Height = 37
    Caption = 'L'#225'mpara:'
    Color = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Shape1: TShape
    Left = 272
    Top = 72
    Width = 33
    Height = 33
    Shape = stCircle
  end
  object Label2: TLabel
    Left = 16
    Top = 120
    Width = 166
    Height = 37
    Caption = 'Ventilador:'
    Color = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Shape2: TShape
    Left = 272
    Top = 120
    Width = 33
    Height = 33
    Shape = stCircle
  end
  object Label3: TLabel
    Left = 16
    Top = 16
    Width = 206
    Height = 37
    Caption = 'Device name:'
    Color = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 168
    Width = 222
    Height = 37
    Caption = 'Electrovalvula:'
    Color = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Shape3: TShape
    Left = 272
    Top = 168
    Width = 33
    Height = 33
    Shape = stCircle
  end
  object PIniciarT: TPanel
    Left = 16
    Top = 376
    Width = 137
    Height = 49
    Caption = 'Iniciar tarjeta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BotonIniciarTarjeta
  end
  object PTimer: TPanel
    Left = 168
    Top = 376
    Width = 137
    Height = 49
    Caption = 'Timer ON'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = IniciarTimer
  end
  object Edit1: TEdit
    Left = 224
    Top = 16
    Width = 81
    Height = 34
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Text = 'Dev3'
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 232
    Width = 233
    Height = 33
    Caption = 'D'#237'a / noche'
    Color = clAqua
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
  end
  object CheckBox2: TCheckBox
    Left = 16
    Top = 280
    Width = 233
    Height = 33
    Caption = 'Humedad'
    Color = clAqua
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 4
  end
  object CheckBox3: TCheckBox
    Left = 16
    Top = 328
    Width = 233
    Height = 33
    Caption = 'Temperatura m'#225'xima '
    Color = clAqua
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 5
  end
  object Tempo1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Tempo1Timer
  end
end
