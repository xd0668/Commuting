object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 377
  ClientWidth = 660
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 551
    Top = 30
    Width = 75
    Height = 25
    Caption = #52636#44540
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 551
    Top = 61
    Width = 75
    Height = 25
    Caption = #53748#44540
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 55
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 2
    Text = #48149#50689#44540
  end
  object ComboBox1: TComboBox
    Left = 303
    Top = 59
    Width = 145
    Height = 21
    TabOrder = 3
    Text = 'ComboBox1'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 55
    Top = 32
    Width = 186
    Height = 21
    Date = 43340.000000000000000000
    Format = 'yyyy-MM-dd HH:mm:ss'
    Time = 43340.000000000000000000
    DoubleBuffered = False
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 311
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Button3: TButton
    Left = 551
    Top = 92
    Width = 75
    Height = 25
    Caption = #50672#52264
    TabOrder = 6
  end
  object Button4: TButton
    Left = 551
    Top = 123
    Width = 75
    Height = 25
    Caption = #51648#44033
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = -1
    Top = 154
    Width = 661
    Height = 185
    DataSource = DM.DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NO'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLASS'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEST_DATE'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRADE'
        Width = 100
        Visible = True
      end>
  end
end
