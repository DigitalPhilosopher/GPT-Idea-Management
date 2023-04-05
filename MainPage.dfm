object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Idea Management System'
  ClientHeight = 300
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnNew: TButton
    Left = 16
    Top = 16
    Width = 75
    Height = 25
    Caption = 'New'
    TabOrder = 0
    OnClick = btnNewClick
  end
  object btnOpenExcel: TButton
    Left = 16
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Open CSV'
    TabOrder = 1
    OnClick = btnOpenExcelClick
  end
  object lbIdeas: TListBox
    Left = 104
    Top = 16
    Width = 280
    Height = 264
    ItemHeight = 13
    TabOrder = 2
  end
end
