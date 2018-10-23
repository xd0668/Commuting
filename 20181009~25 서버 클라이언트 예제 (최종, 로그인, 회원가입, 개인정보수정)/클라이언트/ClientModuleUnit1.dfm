object ClientModule1: TClientModule1
  OldCreateOrder = False
  Height = 271
  Width = 415
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DataSnap'
      'HostName=localhost'
      'port=211')
    Connected = True
    Left = 16
    Top = 128
    UniqueId = '{AF7B3C2D-0635-498F-A1D4-105B5946543A}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 152
    Top = 40
  end
  object PERSONNEL: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PERSONNELProvider'
    RemoteServer = DSProviderConnection1
    Left = 96
    Top = 128
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PERSONNEL')
    SQLConnection = SQLConnection2
    Left = 96
    Top = 200
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 176
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = PERSONNEL
    Left = 168
    Top = 128
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 264
    Top = 192
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet1
    Left = 344
    Top = 192
  end
  object SQLConnection2: TSQLConnection
    ConnectionName = 'Work'
    DriverName = 'Interbase'
    LoginPrompt = False
    Params.Strings = (
      'GetDriverFunc=getSQLDriverINTERBASE'
      'DriverName=Interbase'
      'DriverUnit=Data.DBXInterBase'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver250.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXInterbaseMetaDataCommandFactory,DbxInt' +
        'erBaseDriver250.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXInterbaseMetaDataCommand' +
        'Factory,Borland.Data.DbxInterBaseDriver,Version=24.0.0.0,Culture' +
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
    Left = 16
    Top = 200
  end
end
