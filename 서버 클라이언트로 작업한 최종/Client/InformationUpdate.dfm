object InforUpdate: TInforUpdate
  Left = 0
  Top = 0
  Caption = #54924#50896#51221#48372#49688#51221
  ClientHeight = 565
  ClientWidth = 763
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
    Left = 250
    Top = 32
    Width = 180
    Height = 42
    Caption = #54924#50896#51221#48372#49688#51221
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 72
    Top = 134
    Width = 68
    Height = 19
    Caption = #50500#51060#46356' : '
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #55092#47676#47588#51649#52404
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 58
    Top = 178
    Width = 79
    Height = 19
    Caption = #48708#48128#48264#54840' : '
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #55092#47676#47588#51649#52404
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 87
    Top = 235
    Width = 49
    Height = 19
    Caption = #51060#47492' : '
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #55092#47676#47588#51649#52404
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 288
    Width = 100
    Height = 19
    Caption = #54648#46300#54256' '#48264#54840' : '
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #55092#47676#47588#51649#52404
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 362
    Top = 286
    Width = 68
    Height = 19
    Caption = #51060#47700#51068' : '
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #55092#47676#47588#51649#52404
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 72
    Top = 433
    Width = 47
    Height = 19
    Caption = #51452#49548' : '
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #55092#47676#47588#51649#52404
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 59
    Top = 376
    Width = 77
    Height = 19
    Caption = #51452#48124#48264#54840' : '
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #55092#47676#47588#51649#52404
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 371
    Top = 134
    Width = 53
    Height = 19
    Caption = #49373#51068' : '
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #55092#47676#47588#51649#52404
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 345
    Top = 187
    Width = 85
    Height = 19
    Caption = #51077#49324#51068#51088' : '
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #55092#47676#47588#51649#52404
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 345
    Top = 235
    Width = 85
    Height = 19
    Caption = #44032#51077#51068#51088' : '
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #55092#47676#47588#51649#52404
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 40
    Top = 338
    Width = 96
    Height = 19
    Caption = #44596#44553#50672#46973#52376' : '
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #55092#47676#47588#51649#52404
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 381
    Top = 338
    Width = 49
    Height = 19
    Caption = #48512#49436' : '
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #55092#47676#47588#51649#52404
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 381
    Top = 376
    Width = 49
    Height = 19
    Caption = #51649#44553' : '
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #55092#47676#47588#51649#52404
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 153
    Top = 132
    Width = 170
    Height = 26
    DataField = 'ID'
    DataSource = ClientModule1.DataSource2
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeMode = imDisable
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 153
    Top = 176
    Width = 170
    Height = 26
    DataField = 'PW'
    DataSource = ClientModule1.DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeMode = imDisable
    ParentFont = False
    TabOrder = 1
    OnKeyDown = DBEdit2KeyDown
    OnKeyPress = DBEdit2KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 153
    Top = 233
    Width = 170
    Height = 26
    DataField = 'Name'
    DataSource = ClientModule1.DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyDown = DBEdit3KeyDown
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit4: TDBEdit
    Left = 152
    Top = 286
    Width = 170
    Height = 26
    DataField = 'PhonNum'
    DataSource = ClientModule1.DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeMode = imDisable
    MaxLength = 13
    ParentFont = False
    TabOrder = 3
    OnKeyDown = DBEdit4KeyDown
    OnKeyPress = DBEdit4KeyPress
  end
  object DBEdit5: TDBEdit
    Left = 152
    Top = 336
    Width = 170
    Height = 26
    DataField = 'Emergencycontact'
    DataSource = ClientModule1.DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeMode = imDisable
    MaxLength = 13
    ParentFont = False
    TabOrder = 4
    OnKeyDown = DBEdit5KeyDown
    OnKeyPress = DBEdit5KeyPress
  end
  object DBEdit6: TDBEdit
    Left = 152
    Top = 374
    Width = 170
    Height = 26
    DataField = 'SecurityNum'
    DataSource = ClientModule1.DataSource2
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 13
    ParentFont = False
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 153
    Top = 422
    Width = 472
    Height = 26
    DataField = 'Address'
    DataSource = ClientModule1.DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeMode = imDisable
    MaxLength = 13
    ParentFont = False
    TabOrder = 6
    OnKeyDown = DBEdit7KeyDown
  end
  object DBEdit8: TDBEdit
    Left = 455
    Top = 132
    Width = 170
    Height = 26
    DataField = 'birth'
    DataSource = ClientModule1.DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeMode = imDisable
    MaxLength = 10
    ParentFont = False
    TabOrder = 7
    OnKeyDown = DBEdit8KeyDown
    OnKeyPress = DBEdit8KeyPress
  end
  object DBEdit9: TDBEdit
    Left = 455
    Top = 176
    Width = 170
    Height = 26
    DataField = 'Joindate'
    DataSource = ClientModule1.DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeMode = imDisable
    MaxLength = 10
    ParentFont = False
    TabOrder = 8
    OnKeyDown = DBEdit9KeyDown
    OnKeyPress = DBEdit9KeyPress
  end
  object DBEdit10: TDBEdit
    Left = 455
    Top = 233
    Width = 170
    Height = 26
    DataField = 'Joindate2'
    DataSource = ClientModule1.DataSource2
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object DBEdit11: TDBEdit
    Left = 454
    Top = 284
    Width = 170
    Height = 26
    DataField = 'Email'
    DataSource = ClientModule1.DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeMode = imDisable
    ParentFont = False
    TabOrder = 10
    OnKeyDown = DBEdit11KeyDown
    OnKeyPress = DBEdit11KeyPress
  end
  object DBComboBox1: TDBComboBox
    Left = 454
    Top = 336
    Width = 170
    Height = 22
    Style = csOwnerDrawFixed
    DataField = 'Department'
    DataSource = ClientModule1.DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      #44060#48156#54016
      #51064#49324#54016
      #50689#50629#54016)
    ParentFont = False
    TabOrder = 11
  end
  object DBComboBox2: TDBComboBox
    Left = 455
    Top = 374
    Width = 170
    Height = 22
    Style = csOwnerDrawFixed
    DataField = 'Class'
    DataSource = ClientModule1.DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      #45824#54364
      #51060#49324
      #48512#51109
      #52264#51109
      #44284#51109
      #45824#47532
      #51452#51076
      #49324#50896)
    ParentFont = False
    TabOrder = 12
  end
  object Button1: TButton
    Left = 314
    Top = 466
    Width = 116
    Height = 41
    Caption = #49688#51221#54616#44592
    TabOrder = 13
    OnClick = Button1Click
  end
end
