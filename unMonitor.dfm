object frmmonitor: Tfrmmonitor
  Left = 193
  Top = 87
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 617
  ClientWidth = 1079
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    1079
    617)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 272
    Top = 2
    Width = 526
    Height = 44
    Caption = 'NURSE CALL MONITOR SYSTEM'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -32
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LBJAM: TLabel
    Left = 46
    Top = 578
    Width = 22
    Height = 37
    Caption = ' -'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 998
    Top = 588
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkClose
  end
  object GroupBox1: TGroupBox
    Left = 575
    Top = 56
    Width = 501
    Height = 505
    Caption = 'Panggilan Hari ini'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object SgCall: TStringGrid
      Left = 8
      Top = 23
      Width = 481
      Height = 466
      FixedCols = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ColWidths = (
        140
        60
        51
        117
        84)
    end
  end
  object GroupBox2: TGroupBox
    Left = 31
    Top = 58
    Width = 537
    Height = 498
    Caption = 'Real Time Monitor'
    Color = clMedGray
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object Panel1: TPanel
      Left = 0
      Top = 77
      Width = 537
      Height = 48
      BevelOuter = bvLowered
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clNone
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object LBRUANG1: TLabel
        Left = 32
        Top = 3
        Width = 11
        Height = 44
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBLANTAI1: TLabel
        Left = 160
        Top = 3
        Width = 11
        Height = 44
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBKET1: TLabel
        Left = 290
        Top = 3
        Width = 19
        Height = 44
        Caption = ' -'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 121
      Width = 537
      Height = 48
      BevelOuter = bvLowered
      Color = clSkyBlue
      TabOrder = 1
      object LBRUANG2: TLabel
        Left = 32
        Top = 3
        Width = 11
        Height = 44
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBLANTAI2: TLabel
        Left = 160
        Top = 3
        Width = 11
        Height = 44
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBKET2: TLabel
        Left = 290
        Top = 3
        Width = 19
        Height = 44
        Caption = ' -'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel3: TPanel
      Left = -1
      Top = 168
      Width = 537
      Height = 48
      BevelOuter = bvLowered
      Color = clHighlight
      TabOrder = 2
      object LBRUANG3: TLabel
        Left = 32
        Top = 3
        Width = 11
        Height = 44
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBLANTAI3: TLabel
        Left = 160
        Top = 3
        Width = 11
        Height = 44
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBKET3: TLabel
        Left = 290
        Top = 3
        Width = 19
        Height = 44
        Caption = ' -'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 215
      Width = 537
      Height = 48
      BevelOuter = bvLowered
      Color = clSkyBlue
      TabOrder = 3
      object LBRUANG4: TLabel
        Left = 32
        Top = 3
        Width = 11
        Height = 44
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBLANTAI4: TLabel
        Left = 160
        Top = 3
        Width = 11
        Height = 44
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBKET4: TLabel
        Left = 290
        Top = 3
        Width = 19
        Height = 44
        Caption = ' -'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 261
      Width = 537
      Height = 48
      BevelOuter = bvLowered
      Color = clHighlight
      TabOrder = 4
      object LBRUANG5: TLabel
        Left = 32
        Top = 3
        Width = 11
        Height = 44
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBLANTAI5: TLabel
        Left = 160
        Top = 3
        Width = 11
        Height = 44
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBKET5: TLabel
        Left = 290
        Top = 3
        Width = 19
        Height = 44
        Caption = ' -'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel6: TPanel
      Left = 0
      Top = 307
      Width = 537
      Height = 48
      BevelOuter = bvLowered
      Color = clSkyBlue
      TabOrder = 5
      object LBRUANG6: TLabel
        Left = 32
        Top = 3
        Width = 11
        Height = 44
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMenuText
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBLANTAI6: TLabel
        Left = 160
        Top = 3
        Width = 11
        Height = 44
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMenuText
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBKET6: TLabel
        Left = 290
        Top = 3
        Width = 19
        Height = 44
        Caption = ' -'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel7: TPanel
      Left = 1
      Top = 353
      Width = 537
      Height = 48
      BevelOuter = bvLowered
      Color = clHighlight
      TabOrder = 6
      object LBRUANG7: TLabel
        Left = 32
        Top = 3
        Width = 11
        Height = 44
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBLANTAI7: TLabel
        Left = 160
        Top = 3
        Width = 11
        Height = 44
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBKET7: TLabel
        Left = 290
        Top = 3
        Width = 19
        Height = 44
        Caption = ' -'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 399
      Width = 537
      Height = 48
      BevelOuter = bvLowered
      Color = clSkyBlue
      TabOrder = 7
      object LBRUANG8: TLabel
        Left = 32
        Top = 3
        Width = 11
        Height = 44
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBLANTAI8: TLabel
        Left = 160
        Top = 3
        Width = 11
        Height = 44
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBKET8: TLabel
        Left = 290
        Top = 3
        Width = 19
        Height = 44
        Caption = ' -'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel9: TPanel
      Left = 0
      Top = 446
      Width = 537
      Height = 48
      BevelOuter = bvLowered
      Color = clHighlight
      TabOrder = 8
      object LBRUANG9: TLabel
        Left = 32
        Top = 3
        Width = 11
        Height = 44
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBLANTAI9: TLabel
        Left = 160
        Top = 3
        Width = 11
        Height = 44
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBKET9: TLabel
        Left = 290
        Top = 3
        Width = 19
        Height = 44
        Caption = ' -'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNone
        Font.Height = -32
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel10: TPanel
      Left = 0
      Top = 28
      Width = 537
      Height = 50
      Color = clMoneyGreen
      TabOrder = 9
      object Label3: TLabel
        Left = 16
        Top = 9
        Width = 62
        Height = 22
        Caption = 'LANTAI'
      end
      object Label2: TLabel
        Left = 142
        Top = 9
        Width = 63
        Height = 22
        Caption = 'KAMAR'
      end
      object Label5: TLabel
        Left = 288
        Top = 9
        Width = 150
        Height = 22
        Caption = 'JENIS PANGGILAN'
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 24
    Top = 65520
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 88
    Top = 65528
  end
end
