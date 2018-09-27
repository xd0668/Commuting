object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 267
  ClientWidth = 245
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 32
    Top = 113
    Width = 177
    Height = 25
    DataField = 'TEST_DATE'
    DataSource = DM.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 56
    Top = 24
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 134
    Top = 216
    Width = 75
    Height = 25
    Caption = #52636#44540#54616#44592
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
  end
  object asd: TDBEdit
    Left = 56
    Top = 70
    Width = 121
    Height = 21
    DataField = 'TEST_DATE'
    DataSource = DM.DataSource1
    TabOrder = 3
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 144
    Width = 121
    Height = 21
    DataField = 'ID'
    DataSource = DM.DataSource1
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 171
    Width = 121
    Height = 21
    DataField = 'NAME'
    DataSource = DM.DataSource1
    TabOrder = 5
  end
end
