object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #47196#44536#51064
  ClientHeight = 691
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 42
    Top = 131
    Width = 54
    Height = 16
    Caption = #50500#51060#46356' : '
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #55092#47676#47588#51649#52404
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 175
    Width = 64
    Height = 16
    BiDiMode = bdLeftToRight
    Caption = #48708#48128#48264#54840' : '
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #55092#47676#47588#51649#52404
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 66
    Top = 44
    Width = 201
    Height = 30
    Caption = #52636#53748#44540' '#44288#47532' '#54532#47196#44536#47016
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Yu Gothic UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 272
    Top = 336
    Width = 41
    Height = 13
    Caption = '('#51452')'#49464#47749
  end
  object Edit1: TEdit
    Left = 102
    Top = 125
    Width = 173
    Height = 26
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Yu Gothic UI'
    Font.Style = []
    ImeMode = imDisable
    MaxLength = 10
    ParentFont = False
    TabOrder = 0
    OnChange = Edit1Change
    OnKeyDown = Edit1KeyDown
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 102
    Top = 172
    Width = 173
    Height = 26
    BevelInner = bvSpace
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Yu Gothic UI'
    Font.Style = []
    ImeMode = imDisable
    MaxLength = 10
    ParentFont = False
    TabOrder = 1
    OnChange = Edit2Change
    OnKeyDown = Edit2KeyDown
    OnKeyPress = Edit2KeyPress
  end
  object Button1: TButton
    Left = 102
    Top = 219
    Width = 173
    Height = 41
    Caption = #47196#44536#51064
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 102
    Top = 275
    Width = 75
    Height = 25
    Caption = #54924#50896#44032#51077
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 200
    Top = 275
    Width = 75
    Height = 25
    Caption = 'ID,PW '#52286#44592
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 232
    Top = 544
    Width = 320
    Height = 120
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'Work'
    DriverName = 'Interbase'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'DriverUnit=Data.DBXInterBase'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver200.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=20.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXInterbaseMetaDataCommandFactory,DbxInt' +
        'erBaseDriver200.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXInterbaseMetaDataCommand' +
        'Factory,Borland.Data.DbxInterBaseDriver,Version=20.0.0.0,Culture' +
        '=neutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxint.dll'
      'LibraryNameOsx=libsqlib.dylib'
      'VendorLib=GDS32.DLL'
      'VendorLibWin64=ibclient64.dll'
      'VendorLibOsx=libgds.dylib'
      'Database=C:\Databases\Work.IB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'DisplayDriverName=InterBase Server'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False'
      'SEP=')
    Connected = True
    Left = 48
    Top = 328
  end
  object PERSONNEL: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 120
    Top = 328
  end
  object SimpleDataSet1: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.Active = True
    DataSet.CommandText = 'PERSONNEL'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 480
    Top = 456
  end
  object DataSource1: TDataSource
    DataSet = SimpleDataSet1
    Left = 592
    Top = 448
  end
end
