object Fresultado: TFresultado
  Left = 0
  Top = 0
  Caption = 'Fresultado'
  ClientHeight = 285
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 285
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = -8
    object Label1: TLabel
      Left = 40
      Top = 112
      Width = 48
      Height = 13
      Caption = 'Seu peso:'
    end
    object Label2: TLabel
      Left = 40
      Top = 72
      Width = 53
      Height = 13
      Caption = 'Sua altura:'
    end
    object Label3: TLabel
      Left = 40
      Top = 224
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object Label4: TLabel
      Left = 40
      Top = 149
      Width = 48
      Height = 13
      Caption = 'Seu sexo:'
    end
    object Label5: TLabel
      Left = 40
      Top = 184
      Width = 40
      Height = 13
      Caption = 'Seu IMC'
    end
    object Ldescricao: TLabel
      Left = 304
      Top = 224
      Width = 3
      Height = 13
    end
    object Lsexo: TLabel
      Left = 304
      Top = 149
      Width = 3
      Height = 13
    end
    object Laltura: TLabel
      Left = 304
      Top = 72
      Width = 3
      Height = 13
    end
    object Limc: TLabel
      Left = 304
      Top = 184
      Width = 3
      Height = 13
    end
    object Lpeso: TLabel
      Left = 304
      Top = 112
      Width = 3
      Height = 13
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 447
      Height = 57
      Caption = 'Resultados:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tw Cen MT Condensed'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
end
