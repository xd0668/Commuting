object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #54924#50896#44032#51077
  ClientHeight = 540
  ClientWidth = 644
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
    Left = 8
    Top = 8
    Width = 292
    Height = 42
    Caption = #54924#50896#44032#51077' '#54868#47732' '#51089#50629#51473
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 72
    Top = 131
    Width = 33
    Height = 13
    Caption = #50500#51060#46356
  end
  object Label4: TLabel
    Left = 72
    Top = 179
    Width = 44
    Height = 13
    Caption = #48708#48128#48264#54840
  end
  object Label5: TLabel
    Left = 83
    Top = 235
    Width = 22
    Height = 13
    Caption = #51060#47492
  end
  object Label6: TLabel
    Left = 75
    Top = 283
    Width = 55
    Height = 13
    Caption = #54648#46300#54256#48264#54840
  end
  object Label7: TLabel
    Left = 75
    Top = 339
    Width = 33
    Height = 13
    Caption = #51060#47700#51068
  end
  object Label8: TLabel
    Left = 75
    Top = 387
    Width = 22
    Height = 13
    Caption = #51452#49548
  end
  object Label9: TLabel
    Left = 344
    Top = 131
    Width = 44
    Height = 13
    Caption = #51452#48124#48264#54840
  end
  object Label12: TLabel
    Left = 344
    Top = 227
    Width = 44
    Height = 13
    Caption = #51077#49324#51068#51088
  end
  object Label13: TLabel
    Left = 344
    Top = 267
    Width = 44
    Height = 13
    Caption = #44032#51077#51068#51088
  end
  object Label14: TLabel
    Left = 344
    Top = 307
    Width = 55
    Height = 13
    Caption = #44596#44553#50672#46973#52376
  end
  object Label15: TLabel
    Left = 358
    Top = 342
    Width = 22
    Height = 13
    Caption = #48512#49436
  end
  object Label16: TLabel
    Left = 358
    Top = 382
    Width = 22
    Height = 13
    Caption = #51649#44553
  end
  object Label10: TLabel
    Left = 344
    Top = 179
    Width = 22
    Height = 13
    Caption = #49373#51068
  end
  object Button1: TButton
    Left = 291
    Top = 472
    Width = 75
    Height = 25
    Caption = #52636#44540
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBEdit1: TDBEdit
    Left = 152
    Top = 128
    Width = 121
    Height = 21
    DataField = 'ID'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 152
    Top = 176
    Width = 121
    Height = 21
    DataField = 'PassWord'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 152
    Top = 232
    Width = 121
    Height = 21
    DataField = 'Name'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 152
    Top = 280
    Width = 121
    Height = 21
    DataField = 'PhonNum'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 152
    Top = 336
    Width = 121
    Height = 21
    DataField = 'Email'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 152
    Top = 384
    Width = 121
    Height = 21
    DataField = 'Address'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit7: TDBEdit
    Left = 424
    Top = 128
    Width = 121
    Height = 21
    DataField = 'SecurityNum'
    DataSource = DataSource1
    TabOrder = 7
    OnKeyPress = DBEdit7KeyPress
  end
  object DBEdit8: TDBEdit
    Left = 424
    Top = 176
    Width = 121
    Height = 21
    DataField = 'birth'
    DataSource = DataSource1
    TabOrder = 8
    OnKeyPress = DBEdit8KeyPress
  end
  object DBEdit9: TDBEdit
    Left = 424
    Top = 224
    Width = 121
    Height = 21
    DataField = 'Joindate'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit10: TDBEdit
    Left = 424
    Top = 264
    Width = 121
    Height = 21
    DataField = 'Joindate2'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 10
  end
  object DBEdit11: TDBEdit
    Left = 424
    Top = 304
    Width = 121
    Height = 21
    DataField = 'Emergencycontact'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBComboBox1: TDBComboBox
    Left = 424
    Top = 339
    Width = 121
    Height = 21
    DataField = 'Department'
    DataSource = DataSource1
    Items.Strings = (
      #44060#48156#54016
      #51064#49324#54016
      #50689#50629#54016)
    TabOrder = 12
  end
  object DBComboBox2: TDBComboBox
    Left = 424
    Top = 379
    Width = 121
    Height = 21
    DataField = 'Class'
    DataSource = DataSource1
    Items.Strings = (
      #45824#54364
      #51060#49324
      #48512#51109
      #52264#51109
      #44284#51109
      #45824#47532
      #49324#50896)
    TabOrder = 13
  end
  object DataSource1: TDataSource
    DataSet = Form1.SimpleDataSet1
    Left = 320
    Top = 16
  end
end
