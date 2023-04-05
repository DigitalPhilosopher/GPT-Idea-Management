object IdeaForm: TIdeaForm
  Left = 0
  Top = 0
  Caption = 'Idea Form'
  ClientHeight = 400
  ClientWidth = 600
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
  object lblName: TLabel
    Left = 16
    Top = 16
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object lblDescription: TLabel
    Left = 16
    Top = 56
    Width = 53
    Height = 13
    Caption = 'Description'
  end
  object lblPositive: TLabel
    Left = 16
    Top = 176
    Width = 37
    Height = 13
    Caption = 'Positive'
  end
  object lblNegative: TLabel
    Left = 16
    Top = 272
    Width = 43
    Height = 13
    Caption = 'Negative'
  end
  object edName: TEdit
    Left = 64
    Top = 16
    Width = 240
    Height = 21
    TabOrder = 0
  end
  object meDescription: TMemo
    Left = 64
    Top = 56
    Width = 240
    Height = 96
    Lines.Strings = (
      '')
    TabOrder = 1
  end
  object lbPositive: TListBox
    Left = 64
    Top = 176
    Width = 240
    Height = 80
    ItemHeight = 13
    TabOrder = 2
  end
  object lbNegative: TListBox
    Left = 64
    Top = 272
    Width = 240
    Height = 80
    ItemHeight = 13
    TabOrder = 3
  end
  object btnAddPositive: TButton
    Left = 320
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Add Positive'
    TabOrder = 4
    OnClick = btnAddPositiveClick
  end
  object btnAddNegative: TButton
    Left = 320
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Add Negative'
    TabOrder = 5
    OnClick = btnAddNegativeClick
  end
  object btnSave: TButton
    Left = 408
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 6
    OnClick = btnSaveClick
  end
  object btnCancel: TButton
    Left = 504
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 7
    OnClick = btnCancelClick
  end
end
