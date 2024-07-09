object Form1: TForm1
  Left = 212
  Top = 125
  Width = 541
  Height = 419
  Caption = 'SATUAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 64
    Top = 24
    Width = 40
    Height = 18
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 64
    Top = 72
    Width = 70
    Height = 18
    Caption = 'DISKRIPSI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 64
    Top = 296
    Width = 112
    Height = 18
    Caption = 'MASUKAN NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object e1: TEdit
    Left = 160
    Top = 16
    Width = 289
    Height = 21
    TabOrder = 0
  end
  object e2: TEdit
    Left = 160
    Top = 64
    Width = 289
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 112
    Top = 112
    Width = 75
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 200
    Top = 112
    Width = 75
    Height = 33
    Caption = 'UBAH'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 288
    Top = 112
    Width = 75
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 376
    Top = 112
    Width = 75
    Height = 33
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 64
    Top = 160
    Width = 385
    Height = 120
    DataSource = DataModule2.ds1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object e3: TEdit
    Left = 192
    Top = 288
    Width = 257
    Height = 21
    TabOrder = 7
    OnChange = e3Change
  end
end
