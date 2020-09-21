object frmBoldUMLTaggedValuesEditor: TfrmBoldUMLTaggedValuesEditor
  Left = 369
  Top = 134
  Width = 376
  Height = 403
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Bold UML tagged values editor'
  Color = clBtnFace
  Constraints.MinHeight = 100
  Constraints.MinWidth = 100
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF001111
    1111111111111111111111111111111111111111111111111111111111111111
    1111111111111111111111111111111111111111111111111111111111111111
    1111111111111111111111111111111111111111111111111111111111111111
    1111111111111111111111111111111111111111111111111111111111111111
    1111111111111111111111111111111111111111111111111111111111111111
    1111111111111111111111111111111111111111111111111111111111111111
    1111111111111111111111111111111111111111111111111111111111111111
    11111111111111111111111111111111111111111111111111111111111111FF
    FFF11111FFF111FF711FFF1FF71111FFFFFF111FFFFF11FF81FFFFFFF81111FF
    11FFF1FF818FF1FF71FF91FFF71111FF111FF1FF119FF1FF98FF111FF81111FF
    111FF1FF111FF1FF7FF8111FF71111FF111FF1FF111FF1FF9FF8111FF81111FF
    FFFF11FF119FF1FF78FF111FF71111FFFFF111FF81FFF1FF99FF118FF81111FF
    11FF111FFFFF11FF71FFFFFFF71111FF111FF111FFF111FF917FFF1FF81111FF
    111FF111111111FF7111111FF71111FF91FF9111111111FF9111111FF81111FF
    FFFF1111111111FF7111111FF71111FFFF991111111111FF9111111FF8111111
    1111111111111111111111111111111111111111111111111111111111110000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 368
    Height = 357
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object tcTools: TTabControl
      Left = 0
      Top = 0
      Width = 368
      Height = 357
      Align = alClient
      TabOrder = 0
      OnChange = tcToolsChange
      object Splitter1: TSplitter
        Left = 125
        Top = 6
        Width = 6
        Height = 347
        Cursor = crHSplit
        Beveled = True
      end
      object bmValue: TBoldMemo
        Left = 131
        Top = 6
        Width = 233
        Height = 347
        Align = alClient
        Alignment = taLeftJustify
        BoldHandle = blhSelectedTVs
        BoldProperties.Expression = 'value'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 0
        ReadOnly = False
        TabOrder = 0
      end
      object lbTagName: TBoldListBox
        Left = 4
        Top = 6
        Width = 121
        Height = 347
        Align = alLeft
        Alignment = taLeftJustify
        BoldHandle = blhSelectedTVs
        BoldProperties.DefaultDblClick = False
        BoldProperties.InternalDrag = False
        BoldProperties.NilElementMode = neNone
        BoldRowProperties.Expression = 'tag'
        BoldRowProperties.Renderer = BoldAsStringRenderer1
        DragMode = dmAutomatic
        itemHeight = 16
        TabOrder = 1
      end
    end
  end
  object bdhAllTools: TBoldDerivedHandle
    RootHandle = behRoot
    OnDeriveAndSubscribe = bdhAllToolsDeriveAndSubscribe
    ValueTypeName = 'Collection(UMLTaggedValue)'
    Left = 34
    Top = 100
  end
  object bchAllTools: TBoldCursorHandle
    RootHandle = bdhAllTools
    AutoFirst = False
    Left = 34
    Top = 148
  end
  object bdhSelectedTVs: TBoldDerivedHandle
    RootHandle = bchAllTools
    OnDeriveAndSubscribe = bdhSelectedTVsDeriveAndSubscribe
    ValueTypeName = 'Collection(UMLTaggedValue)'
    Left = 147
    Top = 104
  end
  object blhSelectedTVs: TBoldListHandle
    RootHandle = bdhSelectedTVs
    RootTypeName = 'Collection(UMLTaggedValue)'
    Expression = 'self->orderby(tag)'
    Left = 152
    Top = 152
  end
  object behRoot: TBoldExpressionHandle
    Left = 84
    Top = 52
  end
  object BoldAsStringRenderer1: TBoldAsStringRenderer
    OnSubscribe = BoldAsStringRenderer1Subscribe
    OnGetAsString = BoldAsStringRenderer1GetAsString
    Left = 104
    Top = 236
  end
  object MainMenu1: TMainMenu
    Images = ImageList1
    Left = 248
    Top = 170
    object Edit1: TMenuItem
      Caption = '&Edit'
      object Copy1: TMenuItem
        Caption = 'Copy'
        ImageIndex = 0
        ShortCut = 16451
        OnClick = Copy1Click
      end
      object Cut1: TMenuItem
        Caption = 'Cut'
        ImageIndex = 1
        ShortCut = 16472
        OnClick = Cut1Click
      end
      object Paste1: TMenuItem
        Caption = 'Paste'
        ImageIndex = 2
        ShortCut = 16470
        OnClick = Paste1Click
      end
    end
    object mnuTools: TMenuItem
      Caption = '&Tools'
      object Addtaggedvalue1: TMenuItem
        Caption = '&Add tagged value'
        ImageIndex = 3
        OnClick = btAddTVClick
      end
      object Deletetaggedvalue1: TMenuItem
        Caption = '&Delete tagged value'
        ImageIndex = 4
        OnClick = btDeleteTVClick
      end
    end
  end
  object ImageList1: TImageList
    Left = 200
    Top = 236
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001001000000000000018
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010421042104210421042
      1042104210421042104210421042104210420000000000000000000010001000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001000
      1000100010001000100010001000100010000000000000000000000000000000
      0000000000000000000000000000000010420000000000000000100000000000
      1000000000001000100000000000000000000000000000000000000000001000
      1000100010001000100010001000100000000000000000000000000000001000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F100000000000FF7FE07FFF7FE07FFF7F
      E07FFF7FE07F00000000FF7FE07F000010420000000000000000100000000000
      1000000010000000000010000000000000000000000000000000000000001000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F100000000000104200421042004210421000
      FF7F000000000000000000000000FF7F100000000000E07FFF7FE07FFF7FE07F
      FF7FE07FFF7F000018630000FF7F000010420000000000000000100000000000
      1000000010000000000010000000000000000000000000000000000000001000
      FF7F00000000000000000000FF7F100000000000004210420042104200421000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F100000000000FF7FE07FFF7FE07FFF7F
      E07FFF7FE07F0000E07F18630000000010420000000000000000000010001000
      1000000010000000000010000000000000000000000000000000000000001000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F100000000000104200421042004210421000
      FF7F000000000000FF7F100010001000100000000000E07FFF7FE07FFF7FE07F
      FF7FE07FFF7F0000000000000000000010420000000000000000000000000000
      1000000010001000100000000000000000000000FF7FFF7FFF7FFF7FFF7F1000
      FF7F00000000000000000000FF7F100000000000004210420042104200421000
      FF7FFF7FFF7FFF7FFF7F1000FF7F10000000FF7F0000FF7F1042E07FFF7FE07F
      FF7FE07FE07FFF7FE07FFF7FE07F000010420000000000000000000000000000
      1000000010000000000000000000000000000000FF7F00000000000000001000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F100000000000104200421042004210421000
      FF7FFF7FFF7FFF7FFF7F10001000000000001042E07FE07F1042FF7FE07F1042
      E07FFF7FFF7FE07FFF7FE07FFF7F000010420000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F1000
      FF7F00000000FF7F100010001000100000000000004210420042104200421000
      10001000100010001000100000000000000018631042FF7F1042E07F1042E07F
      FF7FE07FE07FFF7FE07FFF7FE07F000010420000000000000000000000000000
      0000000000000000000000000000000000000000FF7F00000000000000001000
      FF7FFF7FFF7FFF7F1000FF7F1000000000000000104200421042004210420042
      104200421042004210420042000000000000104210421042FF7F1042FF7FE07F
      FF7FE07FFF7FE07FFF7FE07FFF7F000010420000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F1000
      FF7FFF7FFF7FFF7F100010000000000000000000004210420000000000000000
      000000000000000010421042000000000000FF7FE07F1042E07FFF7F10421042
      1042104200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7F00000000FF7F00001000
      1000100010001000100000000000000000000000104210420000186318631863
      18631863186300001042004200000000000018631042E07F1042E07F1042E07F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7F0000FF7F
      00000000000000000000000000000000000000000042104200420000E07F0000
      0000E07F00001042004210420000000000001042E07F00001042FF7F00001042
      E07F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7F00000000
      000000000000000000000000000000000000000000000000000000000000E07F
      E07F00000000000000000000000000000000E07F000000001042E07F00000000
      1042000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001042FF7F00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF000000000000EFFD000000000000
      C7FF000000000000C3FB000000000000E3F7000000000000F1E7000000000000
      F8CF000000000000FC1F000000000000FE3F000000000000FC1F000000000000
      F8CF000000000000E1E7000000000000C3F3000000000000C7FD000000000000
      FFFF000000000000FFFF000000000000FFFFFFFFFFFFC000F9FFFFFFFC008000
      F6CFFC0180008000F6B7FC0100008000F6B7FC0100008000F8B7000100008000
      FE8F000100010000FE3F000100030000FF7F000100030000FE3F000300030000
      FEBF000700030001FC9F000F000301FFFDDF00FF000324FFFDDF01FF800766FF
      FDDF03FFF87FE7FFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end