object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 386
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PgcMain: TPageControl
    Left = 0
    Top = 0
    Width = 678
    Height = 386
    ActivePage = TSConsulta
    Align = alClient
    TabOrder = 0
    object TSCadastro: TTabSheet
      Caption = 'Cadastro'
    end
    object TSConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
    end
  end
end
