object VPrincipal: TVPrincipal
  Left = 192
  Top = 125
  Width = 346
  Height = 624
  Caption = 'Control de invernadero'
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
    Caption = 'Electrov'#225'lvula:'
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
  object ImageNoche: TImage
    Left = 280
    Top = 264
    Width = 33
    Height = 33
    Enabled = False
    IncrementalDisplay = True
    Picture.Data = {
      07544269746D61701A0D0000424D1A0D00000000000036000000280000002100
      0000210000000100180000000000E40C0000C40E0000C40E0000000000000000
      0000FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5939393545454272727
      0F0F0F0000000C0C0C2323234E4E4E898989DFDFDFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFF8F8F8FCFCFCFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7FEFEFEFF
      FFFFFFFFFF00FEFEFEF1F1F1FDFDFDFFFFFFFFFFFF6B6B6B0000000000000000
      00000000000000000000000000000000000000000000000000020202878787FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFEFEFE
      EFEFEFFDFDFDFFFFFF00FFFFFFFEFEFEEFEFEFFDFDFDFFFFFFFFFFFFF1F1F11F
      1F1F000000000000000000000000000000000000000000000000000000000000
      000000000000B2B2B2FFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F9F9F9FFFFFFFFFF
      FFFFFFFFFEFEFEF0F0F0FEFEFE00FFFFFFFFFFFFFEFEFEEFEFEFFDFDFDFFFFFF
      FFFFFFFFFFFF7D7D7D0000000000000000000000000000000000000000000000
      000000000000000000000000004A4A4AFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1FA
      FAFAFFFFFFFFFFFFFFFFFFFEFEFEF7F7F700FFFFFFFFFFFFFFFFFFFEFEFEEFEF
      EFFDFDFDFFFFFFFFFFFFFFFFFFB3B3B300000000000000000000000000000000
      0000000000000000000000000000000000000000181818FFFFFFFFFFFFFFFFFF
      FFFFFFF0F0F0FAFAFAFFFFFFFFFFFFFFFFFFFEFEFE00FCFCFCFFFFFFFFFFFFFF
      FFFFFEFEFEEFEFEFFDFDFDFFFFFFFFFFFFFFFFFFB1B1B1000000000000000000
      000000000000000000000000000000000000000000000000000000181818FFFF
      FFFFFFFFFFFFFFFFFFFFF0F0F0F9F9F9FFFFFFFFFFFFFFFFFF00F7F7F7F9F9F9
      FFFFFFFFFFFFFFFFFFFEFEFEEFEFEFFDFDFDFFFFFFFFFFFFFFFFFF7373730000
      0000000000000000000000000000000000000000000000000000000000000000
      0000454545FFFFFFFFFFFFFFFFFFFFFFFFF1F1F1FAFAFAFFFFFFFFFFFF00FFFF
      FFF1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFEFEFEEFEFEFFDFDFDFFFFFFFFFFFFFF
      FFFF131313000000000000000000000000000000000000000000000000000000
      000000000000000000ADADADFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F9F9F9FFFF
      FF00FFFFFFFFFFFFF1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFEFEFEF0F0F0FDFDFD
      FFFFFFFFFFFFE0E0E00000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1
      F1F1FCFCFC00FFFFFFFFFFFFFFFFFFF1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFEFE
      FEEFEFEFFDFDFDFFFFFFFFFFFF37373700000000000000000000000000000000
      00000000000000000000000000000000000000007D7D7DFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF8F8F800FFFFFFFFFFFFFFFFFFFFFFFFF1F1F1FAFAFAFFFFFFFF
      FFFFFFFFFFFEFEFEEFEFEFFDFDFDFFFFFFCBCBCB000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFFFFF6F6
      F6FFFFFFFFFFFFFFFFFFFFFFFF00FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1
      FAFAFAFFFFFFFFFFFFFFFFFFFEFEFEEFEFEFFEFEFEFFFFFF0000000000000000
      00000000000000000000000000000000000000000000000000000000000000CD
      CDCDFCFCFCF5F5F5FFFFFFFFFFFFFFFFFF00F8F8F8F6F6F6FFFFFFFFFFFFFFFF
      FFFFFFFFF1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFEFEFEEFEFEFFFFFFF55555500
      0000000000000000000000000000000000000000000000000000000000000000
      0000006F6F6FFFFFFFF4F4F4F6F6F6FFFFFFFFFFFF00FFFFFFF3F3F3F6F6F6FF
      FFFFFFFFFFFFFFFFFFFFFFF1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFEFEFEFDFDFD
      9797970000000000000000000000000000000000000000000000000000000000
      00000000000000272727FFFFFFFFFFFFF4F4F4F6F6F6FFFFFF00FFFFFFFFFFFF
      F4F4F4F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F9F9F9FFFFFFFFFFFFFFFF
      FFFFFFFFC0C0C000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFF4F4F4F9F9F900FFFF
      FFFFFFFFFFFFFFF4F4F4F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFF1F1F1FAFAFAFF
      FFFFFFFFFFFFFFFFE2E2E2000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF9F9
      F900FFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
      F1F1F1FAFAFAFFFFFFFFFFFFEEEEEE0000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFF4F4F4F6F6F6FFFFFFFFFF
      FFFFFFFFFFFFFFF1F1F1FAFAFAFFFFFFE3E3E300000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFF2F2F2
      FFFFFFFFFFFFFFFFFF00FBFBFBF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFF4F4F4F6
      F6F6FFFFFFFFFFFFFFFFFFFFFFFFF1F1F1FFFFFFCBCBCB000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFF8F8F8F2F2F2FFFFFFFFFFFF00FFFFFFF8F8F8F2F2F2FFFFFFFFFFFFFFFFFF
      FFFFFFF3F3F3F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFEFEFE9595950000000000
      0000000000000000000000000000000000000000000000000000000000000027
      2727FFFFFFFFFFFFF8F8F8F2F2F2FFFFFF00FFFFFFFFFFFFF8F8F8F2F2F2FFFF
      FFFFFFFFFFFFFFFFFFFFF4F4F4F6F6F6FFFFFFFFFFFFFFFFFFFFFFFF51515100
      0000000000000000000000000000000000000000000000000000000000000000
      0000006F6F6FFFFFFFFFFFFFFFFFFFF8F8F8F8F8F800FFFFFFFFFFFFFFFFFFF8
      F8F8F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFF4F4F4F6F6F6FFFFFFFFFFFFFFFFFF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFBFBFB00FEFEFEFFFFFF
      FFFFFFFFFFFFF8F8F8F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F6F6F6FFFF
      FFCBCBCB00000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFFFFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFF00F7F7
      F7FEFEFEFFFFFFFFFFFFFFFFFFF8F8F8F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFF4
      F4F4FFFFFF383838000000000000000000000000000000000000000000000000
      000000000000000000000000848484FFFFFFFBFBFBF0F0F0FFFFFFFFFFFFFFFF
      FF00FDFDFDF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F2F2F2FFFFFFFFFFFF
      FFFFFFFFFFFFD9D9D90000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFBFBFBF0F0F0FF
      FFFFFFFFFF00FFFFFFFBFBFBF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F2F2
      F2FFFFFFFFFFFFFFFFFF13131300000000000000000000000000000000000000
      0000000000000000000000000000000000A7A7A7FFFFFFFFFFFFFFFFFFFFFFFF
      FBFBFBF0F0F0FFFFFF00FFFFFFFFFFFFFCFCFCF0F0F0FFFFFFFFFFFFFFFFFFFF
      FFFFF8F8F8F2F2F2FFFFFF737373000000000000000000000000000000000000
      000000000000000000000000000000000000454545FFFFFFEFEFEFFDFDFDFFFF
      FFFFFFFFFFFFFFFBFBFBF7F7F700FFFFFFFFFFFFFFFFFFFCFCFCF0F0F0FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFAAAAAA0000000000000000000000000000000000
      00000000000000000000000000000000000000181818FFFFFFFFFFFFFEFEFEEF
      EFEFFDFDFDFFFFFFFFFFFFFFFFFFFDFDFD00FEFEFEFFFFFFFFFFFFFFFFFFFBFB
      FBF0F0F0FFFFFFFFFFFFFFFFFFB4B4B400000000000000000000000000000000
      0000000000000000000000000000000000000000161616FFFFFFFFFFFFFFFFFF
      FFFFFFFEFEFEEFEFEFFDFDFDFFFFFFFFFFFFFFFFFF00F7F7F7FCFCFCFFFFFFFF
      FFFFFFFFFFFBFBFBF6F6F6FFFFFF7D7D7D000000000000000000000000000000
      0000000000000000000000000000000000000000004A4A4AFFFFFFF5F5F5FAFA
      FAFFFFFFFFFFFFFFFFFFFEFEFEEFEFEFFDFDFDFFFFFFFFFFFF00FFFFFFF0F0F0
      FDFDFDFFFFFFFFFFFFFFFFFFEDEDED1D1D1D0000000000000000000000000000
      00000000000000000000000000000000000000000000B6B6B6FFFFFFFFFFFFFF
      FFFFF1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFEFEFEF0F0F0FDFDFDFFFFFF00FFFF
      FFFEFEFEEFEFEFFCFCFCFFFFFF6B6B6B00000000000000000000000000000000
      00000000000000000000000000000000000000008F8F8FFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFF1F1F1F9F9F9FFFFFFFFFFFFFFFFFFFEFEFEF1F1F1FEFE
      FE00FFFFFFFFFFFFFFFFFFF6F6F6FEFEFEFFFFFFEAEAEA929292545454272727
      0E0E0E0000000C0C0C2323234E4E4E878787DFDFDFFFFFFFFFFFFFFFFFFFF9F9
      F9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFE
      FEFEFAFAFA00}
    Visible = False
  end
  object ImageDia: TImage
    Left = 280
    Top = 264
    Width = 33
    Height = 33
    Picture.Data = {
      07544269746D61701A0D0000424D1A0D00000000000036000000280000002100
      0000210000000100180000000000E40C0000C40E0000C40E0000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFEFEFEFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFCFCFCFF
      FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFEFEFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFEFEFEFFFFFEF0F8FBFFFFFFFFFFFFFF
      FFFFFFFFFFFEFEFEFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
      FCFCFCFBFBFBFFFFFF00FDFDFDFFFFFFFFFFFFFEFEFEFDFDFDFFFFFFFFFFFFFE
      FEFEFEFEFEFFFFFFFFFFFFFEFEFEFDFDFDFFFFFFFFFFFFFFFFFD0089F5FFFFFE
      FFFFFFFFFFFFFDFDFDFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFDFD
      FDFEFEFEFFFFFFFDFDFDFCFCFC00FBFBFBFCFCFCFEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFA3D6FA007F
      FCB9DDF7FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFFFFFFFD
      FDFDFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE00FFFFFFFCFCFCFBFBFBFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF14
      96FA0088FF1796F9FFFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
      FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FEFEFEFFFFFFFDFDFDFA
      FAFAFFFFFFFDFEFEFFFFFEFFFFFFFFFFFEFEFEFEFFFFFFDCEFFAE8F6FBFFFFFF
      D2EAFA0081FF008CFE0080FED1E9FAFFFFFBE8F4FBDDEFFBFFFFFFFFFFFFFFFF
      FEFFFFFEFFFFFFFCFCFDFEFEFEFFFFFFFFFFFFFFFFFFFEFEFE00FFFFFFFFFFFF
      FFFFFFFEFEFEFEFDFDFFFFFE119EF77ECAF9FFFFFCFFFFFEFFFFFFDDF0FC007C
      FBF1F9FB36A4FB0084FB1294FC008AFC2BA0FAF2F9FB0071FADBEEFBFFFFFFFF
      FFFEFFFFFB87C5FA108AF5FFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFE00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE86CDF9008BFF008CFD31ACFAB2E0FADA
      EFFA34A8FBC5E4F793D1F594D9FB84D2FB96DAFBA8DDF8C2E2F7339EFAE2F1FB
      D0E7F848A6FA0076FD0074FF7EC0FAFFFFFFFFFFFFFEFEFEFBFBFBFFFFFFFFFF
      FF00FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFEFFFFFC008CFC0098FE0092FE
      0091FCC0E5F66CC8FB0095FD0099FF0098FF0099FF0099FF0098FF0096FE6DCB
      FAB5D9F30073FD007CFF0084FF0075FEFEFEFBFFFFFFFFFFFFFEFEFEFEFEFEFD
      FDFDFFFFFF00FEFEFEFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFF46B4FA0096
      FC18A1FBD2EEF70099FD0099FE009EFF009FFF009EFE009EFE009FFF009FFF00
      9EFF0099FE009AFDCCECF6188DFB0082FC319BFAFFFFFFFFFFFFFDFDFDFEFEFE
      FFFFFFFEFEFEFDFDFD00FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFCD
      EBFA008FFAD3ECF50092FE009DFE009FFF009FFF009FFF009FFF009EFE009EFE
      009EFE009EFE009FFF009EFF0094FED1EFF7007CFAB9DAF6FFFFFFFFFEFEFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFE00FFFFFFFDFDFDFDFDFDFFFFFFFFFFFFDDF1FB
      DBF1FCE3F4FDB3DFF6009BFA17A5F9009EFF009EFF009FFF009FFF009FFF009F
      FF009EFE049FFD009EFF009FFF009FFF009EFF009AFDBFDFF6E0EFF9F1F6F7F4
      F9FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FDFDFDFEFEFEFFFFFFFDFDFDFFFF
      FFE8F6FB008AFC34B1FB6CC7FA0099FF019EFF18A5F8019FFE009EFF009FFF00
      9FFF009EFE009EFE009FFF009EFE009EFE009FFF009FFF009AFF6BCBFA2A90FA
      0063FCDAE9F7FFFFFDFFFFFFFFFFFFFFFFFFFEFEFE00FFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFDFFFFFFF2F9FCC1E6F60096FE009EFF009EFF009FFE009EFE009EFE
      009FFF009EFD009EFE009FFF009FFF009FFF009EFE009EFE009FFF009EFE0097
      FEB0D6F7F5FAFBFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFE00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFD1ECF92DB1F8A7DEF80098FF009FFF009FFF009EFF009F
      FF009EFE049FFD009FFF009FFF009FFF009FFF009FFF009FFF009EFE029DFB00
      9FFF0098FFAADDF72C8EF9D1E6F9FFFFFFFFFFFEFDFDFCFFFFFFFFFFFF00FFFF
      FFFFFFFFFFFFFEB1E2FA17ABFA0097FE00A0FB95D6FB0099FF009FFF009FFF00
      9FFF009FFF009EFE009FFE009EFE009EFF009EFF009FFF009FFF009FFF009EFE
      009FFF009DFE0099FF95DCFB0073FC0069FF1885F9B0D5F9FFFFFEFFFFFEFFFF
      FF00FFFDFDF0F9FB009DF80092FF009EFE00A2FE11AAFC83CFFB0099FE009FFF
      009FFF009EFE009EFE009FFF009FFF009EFF12A3FB009EFF009EFF009EFE009D
      FE009FFF009FFF009FFF0098FE83D4FB1280FC0078FF0073FD0062FF0071F6F1
      F7FAFFFDFC00FDFDFDFFFDFBFFFFFEA4DDFA13A9FA0098FF009DFC94D6FB0099
      FF009EFE009EFE009EFE009FFF009FFF009FFF009EFF05A0FD18A5F8009EFE00
      9EFE009FFF009FFF009FFF009FFF0099FF94DBFA006FFB006AFD1482FAA5CFF8
      FFFFFEFFFFFFFEFEFE00FFFFFFFCFCFCFBFAFAFFFFFFFFFFFFD3EEFA35B6FB91
      D4F70098FF019FFE039FFD009EFF009FFF009FFF009FFF009FFF009EFF009EFE
      1EA6F8029FFE009EFF009FFF009FFF009FFF0099FF91D1F63B95F8D1E6F9FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF00FDFDFDFFFFFFFEFEFEFAFAFAFFFFFFFFFFFF
      F2FAFCC4EBF80095FD009EFF009FFF009EFE009FFF009FFF009FFF009FFF009E
      FE009EFE009DFF17A4F904A0FD009EFF009FFF009EFF0098FDB0D2F6F5F9FCFF
      FFFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFE00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FEE9F7FB0096FC33B9FA6CC6FB009AFF009FFF009FFF009EFE009EFE009FFF00
      9EFE009EFE009FFF009FFF009EFF009EFE009EFE009FFF0099FE6CCCFB2A86FB
      0054FBD9EAFAFFFFFEFEFEFEFFFFFFFEFEFEFEFEFE00FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFDCF2FADAF1FAE3F5FCB6E6F60098FD009EFF009FFF009FFF019EFE
      029EFC009FFF009FFF009FFF009FFF009FFF009FFF009EFE029EFD009AFDBFD9
      F6E1EEFAF2F8FBF1F7FCFFFFFFFEFEFEFBFBFBFFFFFFFFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFFFEFFFFFFCEEEFA00A2FECBEBF70093FE009EFF009E
      FE009EFE009EFE009EFE009FFF009FFF009FFF009FFF009FFF009DFE0095FED1
      F0F60061FDB1D2FAFFFFFFFFFFFFFFFFFFFDFDFDFEFEFEFDFDFDFFFFFF00FEFE
      FEFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFF47C3FA04ACFB19B4FCD0EDF700
      97FD0099FE009EFF009FFF009EFE009EFE009FFF009FFF009EFE0099FE009BFE
      CBEDF61877FB016FFB328AF9FFFFFFFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFDFD
      FD00FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFC00A2FE06ADFD07ACFA
      00A6FCBFE9F76CC4FB0095FE009AFF0099FF0099FF0098FE0098FF0098FD6DCD
      FBB3D3F4005BFC0065FF006FFE0069F7FFFFFAFFFFFEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFF88D8FB00A2FF00A2
      FE36BCF9B7E4F7E0F5FB2AC0FCB1E9F893CCF595DEFA83D6FC95DEFBADDEF6AF
      CFF52B7DFAEBF3FACEE3FA4797F9005EFD005CFF84B7F6FFFFFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FDFDFDFFFFFFFFFFFFFDFDFDFFFEFEFFFFFF10B1F77E
      D4FBFDFDFBFFFFFEFFFFFFF1F7F900A1FCF4FFFC3680FA0058FC136CFA005DFB
      2B7BF9F5F8FB0048FBF1F7FBFFFFFFFFFFFFFFFFFB87BBF91077F5FFFFFBFDFD
      FDFFFFFFFFFFFFFFFFFFFEFEFE00FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFEFE
      FFFFFEFFFFFEFFFFFFFFFFFFFFFFFFF2FBFDD7F1FAFFFFFFD2E4F90053FE0063
      FF0052FFD1E3F9FFFFFFD8E7F9F1F6FBFFFFFFFDFDFDFFFFFFFFFFFFFFFFFEFD
      FEFEFEFEFEFEFEFEFFFFFFFDFDFDFEFEFE00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFDFDFDFDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFD14
      70F9005EFF1772F9FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFEFEFEFCFCFCFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFE
      FFFFFFA4C7F70049FFB0CFF8FFFFFFFFFFFFFEFEFEFDFDFDFFFFFFFDFDFDFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFDFDFDFFFFFF00FBFBFBFFFFFF
      FFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFEFEFEFEFE
      FEFFFFFFFFFFFFFFFFFE0364F2FFFFFEFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFF
      FFFFFDFDFDFFFFFFFFFFFFFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFCFCFC00FEFE
      FEFAFAFAFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFEFEFEFE
      FEFEFFFFFFFFFFFFFFFFFFFFFFFFEFF5FAFEFDFBFDFDFDFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFDFDFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00FFFFFFFDFDFDFAFAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
      FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFAFAFAFEFEFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00}
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
  object CheckBoxDiaNoche: TCheckBox
    Left = 16
    Top = 264
    Width = 257
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
