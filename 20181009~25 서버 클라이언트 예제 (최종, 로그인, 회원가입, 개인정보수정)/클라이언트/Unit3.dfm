object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 411
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
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
  object DBEdit1: TDBEdit
    Left = 146
    Top = 132
    Width = 170
    Height = 26
    DataField = 'ID'
    DataSource = ClientModule1.DataSource1
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
    Left = 152
    Top = 176
    Width = 170
    Height = 26
    DataField = 'PassWord'
    DataSource = ClientModule1.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeMode = imDisable
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 206
    Top = 282
    Width = 116
    Height = 41
    Caption = #44032#51077#54616#44592
    TabOrder = 2
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 400
    Top = 134
    Width = 320
    Height = 120
    DataSource = ClientModule1.DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
