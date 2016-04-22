object frmPath: TfrmPath
  Left = 192
  Top = 124
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Select Path'
  ClientHeight = 329
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 16
    Width = 401
    Height = 153
    TabOrder = 0
    object Label3: TLabel
      Left = 15
      Top = 12
      Width = 21
      Height = 13
      Caption = 'Tgl.:'
    end
    object Label1: TLabel
      Left = 183
      Top = 12
      Width = 3
      Height = 13
      Caption = '-'
    end
    object Label2: TLabel
      Left = 15
      Top = 44
      Width = 35
      Height = 13
      Caption = 'Lantai :'
    end
    object Label4: TLabel
      Left = 15
      Top = 74
      Width = 36
      Height = 13
      Caption = 'Kamar :'
    end
    object Label5: TLabel
      Left = 4
      Top = 101
      Width = 53
      Height = 13
      Caption = 'Panggilan :'
    end
    object dtpdari: TDateTimePicker
      Left = 58
      Top = 8
      Width = 113
      Height = 21
      Date = 0.690744189821998600
      Format = 'dd/MM/yyyy'
      Time = 0.690744189821998600
      TabOrder = 0
    end
    object dtpsampai: TDateTimePicker
      Left = 200
      Top = 8
      Width = 113
      Height = 21
      Date = 0.690744189821998600
      Format = 'dd/MM/yyyy'
      Time = 0.690744189821998600
      TabOrder = 1
    end
    object CMBLANTAI: TComboBox
      Left = 62
      Top = 41
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9')
    end
    object cmbkamar: TComboBox
      Left = 62
      Top = 71
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9')
    end
    object cmbpanggil: TComboBox
      Left = 63
      Top = 98
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      Text = 'All'
      Items.Strings = (
        'All'
        'Nurse Call'
        'Bathroom Call'
        'Code Blue')
    end
  end
  object BitBtn1: TBitBtn
    Left = 338
    Top = 249
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkClose
  end
  object Button1: TButton
    Left = 7
    Top = 173
    Width = 99
    Height = 29
    Caption = 'Lap. Lantai'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 7
    Top = 202
    Width = 99
    Height = 29
    Caption = 'Lap. Kamar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 7
    Top = 232
    Width = 99
    Height = 27
    Caption = 'Lap. Panggilan'
    TabOrder = 4
    OnClick = Button3Click
  end
  object DBGLantai: TDBGrid
    Left = 32
    Top = 328
    Width = 97
    Height = 72
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'Lantai'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c3'
        Title.Caption = 'KAMAR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ket'
        Title.Caption = 'JENIS PANGGILAN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c1'
        Title.Caption = 'CALL TIME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c7'
        Title.Caption = 'RECOVERY TIME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c8'
        Title.Caption = 'RESPONSE TIME (dtk)'
        Visible = True
      end>
  end
  object Button4: TButton
    Left = 120
    Top = 173
    Width = 186
    Height = 29
    Caption = 'Export To Excel Lap. Lantai'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 120
    Top = 202
    Width = 186
    Height = 29
    Caption = 'Export To Excel Lap. Kamar'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 120
    Top = 231
    Width = 186
    Height = 29
    Caption = 'Export To Excel Lap. Panggilan'
    TabOrder = 8
    OnClick = Button6Click
  end
  object DBGrid1: TDBGrid
    Left = 133
    Top = 376
    Width = 97
    Height = 72
    DataSource = DataSource1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'c3'
        Title.Caption = 'KAMAR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lantai'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ket'
        Title.Caption = 'JENIS PANGGILAN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c1'
        Title.Caption = 'CALL TIME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c7'
        Title.Caption = 'RECOVERY TIME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c8'
        Title.Caption = 'RESPONSE TIME (dtk)'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 242
    Top = 374
    Width = 97
    Height = 72
    DataSource = DataSource1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'ket'
        Title.Caption = 'JENIS PANGGILAN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lantai'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c3'
        Title.Caption = 'KAMAR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c1'
        Title.Caption = 'CALL TIME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c7'
        Title.Caption = 'RECOVERY TIME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c8'
        Title.Caption = 'RESPONSE TIME (dtk)'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    Left = 72
    Top = 120
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password="";User ID=Admin;Data ' +
      'Source=E:\fian\Nurse Call\;Mode=Share Deny None;Extended Propert' +
      'ies="text;HDR=Yes;FMT=Delimited";Jet OLEDB:System database="";Je' +
      't OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLED' +
      'B:Engine Type=96;Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Glo' +
      'bal Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet ' +
      'OLEDB:New Database Password="";Jet OLEDB:Create System Database=' +
      'False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Loca' +
      'le on Compact=False;Jet OLEDB:Compact Without Replica Repair=Fal' +
      'se;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 125
    Top = 121
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      ' from [Report.CSV]')
    Left = 177
    Top = 121
  end
  object RvProject1: TRvProject
    ProjectFile = 'Project1.rav'
    Left = 216
    Top = 120
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ADOQuery2
    Left = 48
    Top = 128
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select distinct lantai'
      ' from [Report.CSV]')
    Left = 105
    Top = 81
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select distinct c3'
      ' from [Report.CSV]')
    Left = 257
    Top = 65
  end
  object RvProject2: TRvProject
    ProjectFile = 'Project1.rav'
    Left = 280
    Top = 128
  end
  object RvProject3: TRvProject
    ProjectFile = 'Project1.rav'
    Left = 360
    Top = 128
  end
  object SaveDialog1: TSaveDialog
    Left = 232
    Top = 224
  end
end
