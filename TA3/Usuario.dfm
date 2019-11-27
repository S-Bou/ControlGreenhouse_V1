object VPrincipal: TVPrincipal
  Left = 192
  Top = 125
  Width = 339
  Height = 483
  Caption = 'Control De Tarjeta'
  Color = clActiveCaption
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
    Top = 72
    Width = 240
    Height = 37
    Caption = 'Estado bot'#243'n 1:'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
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
    Width = 242
    Height = 37
    Caption = 'Estado bot'#243'n 2:'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
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
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape3: TShape
    Left = 56
    Top = 168
    Width = 65
    Height = 65
    Shape = stCircle
  end
  object Shape4: TShape
    Left = 200
    Top = 168
    Width = 65
    Height = 65
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
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Text = 'Dev3'
  end
  object BLed1: TButton
    Left = 16
    Top = 248
    Width = 137
    Height = 49
    Caption = 'Led 1: ON'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object BLed2: TButton
    Left = 168
    Top = 248
    Width = 137
    Height = 49
    Caption = 'Led 2: ON'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object BAlternar: TButton
    Left = 16
    Top = 312
    Width = 289
    Height = 49
    Caption = 'Alternar estado leds ON'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object Tempo1: TTimer
    Enabled = False
    Interval = 200
  end
end
