unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, Vcl.ComCtrls, uFrmPrincipal2;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    texto: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    ListBox1: TListBox;
    StaticText1: TStaticText;
    Button7: TButton;
    RadioGroup1: TRadioGroup;
    ImageList1: TImageList;
    StaticText2: TStaticText;
    Button8: TButton;
    Button9: TButton;
    me: TMemo;
    procedure textoEnter(Sender: TObject);
    procedure textoExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet2;
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet3;
end;

procedure TFrmPrincipal.Button4Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet2;
end;

procedure TFrmPrincipal.Button5Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
end;

procedure TFrmPrincipal.Button6Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex > -1 then
  begin
    ListBox1.Items.Add(RadioGroup1.Items[RadioGroup1.ItemIndex]);
    RadioGroup1.ItemIndex := -1;
  end
  else
    MessageDlg('Voc� n�o escolheu nada', mtError, [mbOk], 0);
end;

procedure TFrmPrincipal.Button7Click(Sender: TObject);
begin
  ListBox1.Items.Clear;
end;

procedure TFrmPrincipal.Button8Click(Sender: TObject);
begin
  me.SetFocus;
  me.SelectAll;
end;

procedure TFrmPrincipal.Button9Click(Sender: TObject);
begin
  me.Clear;
end;

procedure TFrmPrincipal.textoEnter(Sender: TObject);
begin
  texto.Color := $00B9FFFF;
end;

procedure TFrmPrincipal.textoExit(Sender: TObject);
begin
  texto.Color := clWindow;
  if texto.Text = '' then
  begin
    MessageDlg('Voc� n�o digitou nada', mtError, [mbOk], 0);
    texto.SetFocus;
    texto.SelectAll;
  end
  else if Length(texto.Text) <> 4 then
  begin
    MessageDlg('Voc� n�o digitou 4 caracteres', mtError, [mbOk], 0);
    texto.SetFocus;
    texto.SelectAll;
  end
  else
    texto.Color := clWindow;
end;

end.
