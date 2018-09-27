object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 555
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 40
    Top = 216
    Width = 665
    Height = 225
    DataSource = DM.DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NO'
        Width = 100
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
  object Button1: TButton
    Left = 592
    Top = 48
    Width = 75
    Height = 25
    Caption = #52636#44540
    TabOrder = 1
    OnClick = Button1Click
  end
end
