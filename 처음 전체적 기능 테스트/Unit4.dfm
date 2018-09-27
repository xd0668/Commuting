object DM: TDM
  OldCreateOrder = False
  Height = 243
  Width = 497
  object SQLConnection1: TSQLConnection
    ConnectionName = 'Sample'
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
      'Database=C:\Databases\TEST.IB'
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
    Left = 112
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = TEST
    Left = 384
    Top = 128
  end
  object TEST: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'TEST'
    DataSet.CommandType = ctTable
    DataSet.DataSource = DataSource1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 208
    Top = 120
    object TESTNO: TIntegerField
      FieldName = 'NO'
    end
    object TESTID: TStringField
      FieldName = 'ID'
      Size = 50
    end
    object TESTNAME: TStringField
      FieldName = 'NAME'
      Size = 50
    end
    object TESTCLASS: TStringField
      FieldName = 'CLASS'
      Size = 200
    end
    object TESTTEST_DATE: TSQLTimeStampField
      FieldName = 'TEST_DATE'
    end
    object TESTGRADE: TIntegerField
      FieldName = 'GRADE'
    end
  end
end
