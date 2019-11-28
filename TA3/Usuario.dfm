object VPrincipal: TVPrincipal
  Left = 192
  Top = 125
  Width = 346
  Height = 624
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
    Top = 128
    Width = 179
    Height = 37
    Caption = 'Ventilaci'#243'n:'
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
    Top = 128
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
    Top = 192
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
    Top = 192
    Width = 33
    Height = 33
    Shape = stCircle
  end
  object Label5: TLabel
    Left = 16
    Top = 104
    Width = 196
    Height = 13
    Caption = 'Se enciende cuando es de noche.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 16
    Top = 168
    Width = 234
    Height = 13
    Caption = 'Se activa cuando la puerta est'#225' cerrada.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 16
    Top = 232
    Width = 300
    Height = 13
    Caption = 'Se activa cuando humedad est'#225' por debajo del 20%.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 16
    Top = 360
    Width = 98
    Height = 24
    Caption = 'Humedad:'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label9: TLabel
    Left = 16
    Top = 440
    Width = 120
    Height = 37
    Caption = 'Alarma:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape4: TShape
    Left = 272
    Top = 440
    Width = 33
    Height = 33
    Shape = stCircle
  end
  object Label10: TLabel
    Left = 16
    Top = 480
    Width = 265
    Height = 13
    Caption = 'Se activa si es de d'#237'a y la puerta est'#225' abierta.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PIniciarT: TPanel
    Left = 16
    Top = 512
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
    Left = 176
    Top = 512
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
    Height = 37
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
    Top = 264
    Width = 233
    Height = 33
    Caption = 'D'#237'a / noche'
    Color = clMoneyGreen
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
    Top = 312
    Width = 233
    Height = 33
    Caption = 'Puerta abierta/cerrada'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 4
  end
  object ScrollBar1: TScrollBar
    Left = 16
    Top = 392
    Width = 233
    Height = 33
    PageSize = 0
    TabOrder = 5
  end
  object Edit2: TEdit
    Left = 256
    Top = 392
    Width = 57
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object Tempo1: TTimer
    Enabled = False
    Interval = 400
    OnTimer = Tempo1Timer
  end
end
