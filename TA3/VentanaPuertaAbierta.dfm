object VAlarmaPuerta: TVAlarmaPuerta
  Left = 548
  Top = 418
  Width = 402
  Height = 257
  Caption = 'Alarma de puerta abierta'
  Color = clRed
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clMaroon
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 16
    Width = 222
    Height = 46
    Caption = '! ALARMA '#161
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -40
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 335
    Height = 37
    Caption = 'La puerta est'#225' abierta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BAceptar: TButton
    Left = 32
    Top = 152
    Width = 145
    Height = 41
    Caption = 'Aceptar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BAceptarClick
  end
  object BCerrarPuerta: TButton
    Left = 208
    Top = 152
    Width = 145
    Height = 41
    Caption = 'Cerrar puerta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BCerrarPuertaClick
  end
end
