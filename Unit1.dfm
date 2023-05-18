object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 177
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 50
    Width = 346
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 360
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Encript'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 360
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Decript'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Memo1: TEdit
    Left = 8
    Top = 98
    Width = 346
    Height = 21
    TabOrder = 3
    Text = 'Memo1'
  end
end
