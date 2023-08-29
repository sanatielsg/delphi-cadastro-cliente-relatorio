unit u_main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ComCtrls,
  u_dm,
  u_cliente,
  Data.DB,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Mask,
  cxClasses, cxLocalization, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  u_util
  ;

type
  TFrmMain = class(TForm)
    PgcMain: TPageControl;
    TSCadastro: TTabSheet;
    TSConsulta: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    CbxRelMes: TComboBox;
    Label1: TLabel;
    BrnRelAniversariantes: TButton;
    GroupBox2: TGroupBox;
    BtnRelCadastral: TButton;
    RgpRelOrdenacao: TRadioGroup;
    RgpRelOrdem: TRadioGroup;
    GroupBox3: TGroupBox;
    DTPRelDataIni: TDateTimePicker;
    Label2: TLabel;
    DTPRelDataFim: TDateTimePicker;
    Label3: TLabel;
    BtnRelAuditoria: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    BtnCadInserir: TButton;
    ImageList: TImageList;
    BtnCadNovo: TButton;
    BtnCadExcluir: TButton;
    BtnCadCancelar: TButton;
    EdtCadCodigo: TEdit;
    Label4: TLabel;
    RgpCadTipoPessoa: TRadioGroup;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GbxCadPF: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    EdtCadNome: TEdit;
    EdtCadCPF: TMaskEdit;
    EdtCadRG: TEdit;
    GbxCadPJ: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    EdtCadRazaoSocial: TEdit;
    EdtCadFantasia: TEdit;
    EdtCadCNPJ: TMaskEdit;
    TabSheet4: TTabSheet;
    GbxCadEndereco: TGroupBox;
    Label11: TLabel;
    EdtCadEndereco: TEdit;
    Label12: TLabel;
    EdtCadNumero: TEdit;
    EdtCadCEP: TMaskEdit;
    Label13: TLabel;
    Label14: TLabel;
    EdtCadCidade: TEdit;
    Label15: TLabel;
    EdtCadUF: TEdit;
    TabSheet5: TTabSheet;
    GbxCadFinanceiro: TGroupBox;
    Label16: TLabel;
    EdtCadLimite: TEdit;
    cxLocalizer: TcxLocalizer;
    GrdConsultaDBTableView1: TcxGridDBTableView;
    GrdConsultaLevel1: TcxGridLevel;
    GrdConsulta: TcxGrid;
    GrdConsultaDBTableView1cli_codigo: TcxGridDBColumn;
    GrdConsultaDBTableView1cli_nome: TcxGridDBColumn;
    GrdConsultaDBTableView1cli_cpf: TcxGridDBColumn;
    GrdConsultaDBTableView1cli_rg: TcxGridDBColumn;
    GrdConsultaDBTableView1cli_cnpj: TcxGridDBColumn;
    GrdConsultaDBTableView1cli_tipo_pessoa: TcxGridDBColumn;
    GrdConsultaDBTableView1cli_endereco: TcxGridDBColumn;
    GrdConsultaDBTableView1cli_numero: TcxGridDBColumn;
    GrdConsultaDBTableView1cli_cep: TcxGridDBColumn;
    GrdConsultaDBTableView1cli_cidade: TcxGridDBColumn;
    GrdConsultaDBTableView1cli_uf: TcxGridDBColumn;
    GrdConsultaDBTableView1cli_limite_credito: TcxGridDBColumn;
    GrdConsultaDBTableView1cli_dthr_cadastro: TcxGridDBColumn;
    DTPCadDataNascimento: TDateTimePicker;
    Label17: TLabel;
    PnlNavegador: TPanel;
    BtnCadAnterior: TButton;
    BtnCadPrimeiro: TButton;
    BtnCadProximo: TButton;
    BtnCadUltimo: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnCadInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCadProximoClick(Sender: TObject);
    procedure BtnCadAnteriorClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure Inserir();
    procedure GetCliente(Value: integer);
    procedure GetProximoCliente(Value: integer);
    procedure GetAnteriorCliente(Value: integer);

  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

{ TFrmMain }

procedure TFrmMain.BtnCadAnteriorClick(Sender: TObject);
  var pos: integer;
begin
  if EdtCadCodigo.Text <> '' then
    GetAnteriorCliente(StrToInt(EdtCadCodigo.Text))
  else
    GetAnteriorCliente(999999999);
end;
procedure TFrmMain.BtnCadInserirClick(Sender: TObject);
begin
  Inserir();
end;

procedure TFrmMain.BtnCadProximoClick(Sender: TObject);
  var pos: integer;
begin
  if EdtCadCodigo.Text <> '' then
    GetProximoCliente(StrToInt(EdtCadCodigo.Text))
  else
    GetProximoCliente(0);
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
if FileExists(ExtractFilePath(Application.ExeName)+'\TraducaoDev2.ini') then {Verifica se existe o arquivo dentro da pasta}
    begin
        cxLocalizer.LoadFromFile(ExtractFilePath(Application.ExeName)+'\TraducaoDev2.ini');
        cxLocalizer.LanguageIndex := 1; {Muda o idioma / linguagem}
        cxLocalizer.Active := TRUE;     {Ativa o componente / a tradu��o}
    end;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  PnlNavegador.Enabled := True;
end;

procedure TFrmMain.GetAnteriorCliente(Value: integer);
  var Cliente :TCliente;
begin
  Cliente := Nil;
  try
    try
      Cliente := DM.GetAnterior(Value);
      if Cliente <> Nil then
      begin
        with Cliente do
        begin
          EdtCadCodigo.Text := IntToStr(Codigo);
          RgpCadTipoPessoa.ItemIndex := TipoPessoa-1;
          if TipoPessoa = 1 then
          begin
            EdtCadNome.Text           := Nome;
            EdtCadCPF.Text            := CPF;
            EdtCadRG.Text             := RG;
            DTPCadDataNascimento.Date := DataNascimento;
          end
          else if TipoPessoa = 2 then
          begin
            EdtCadRazaoSocial.Text := RazaoSocial;
            EdtCadFantasia.Text := NomeFantasia;
            EdtCadCNPJ.Text := CNPJ;
          end;
          EdtCadEndereco.Text := Endereco;
          EdtCadNumero.Text   := Numero;
          EdtCadCEP.Text      := CEP;
          EdtCadCidade.Text   := Cidade;
          EdtCadUF.Text       := UF;
          EdtCadLimite.Text   := FloatToStr(LimiteCredito);
        end;
      end;
    except
      on E:Exception do
        ShowMessage('Ocorreu um erro: '+E.Message);
    end;
  finally
    if Cliente <> Nil then
      FreeAndNil(Cliente);
  end;
end;

procedure TFrmMain.GetCliente(Value : integer);
  var Cliente :TCliente;
begin
  Cliente := Nil;
  try
    try
      Cliente := DM.Get(Value);
      if Cliente <> Nil then
      begin
        with Cliente do
        begin
          EdtCadCodigo.Text := IntToStr(Codigo);
          RgpCadTipoPessoa.ItemIndex := TipoPessoa-1;
          if TipoPessoa = 1 then
          begin
            EdtCadNome.Text           := Nome;
            EdtCadCPF.Text            := CPF;
            EdtCadRG.Text             := RG;
            DTPCadDataNascimento.Date := DataNascimento;
          end
          else if TipoPessoa = 2 then
          begin
            EdtCadRazaoSocial.Text := RazaoSocial;
            EdtCadFantasia.Text := NomeFantasia;
            EdtCadCNPJ.Text := CNPJ;
          end;
          EdtCadEndereco.Text := Endereco;
          EdtCadNumero.Text   := Numero;
          EdtCadCEP.Text      := CEP;
          EdtCadCidade.Text   := Cidade;
          EdtCadUF.Text       := UF;
          EdtCadLimite.Text   := FloatToStr(LimiteCredito);
        end;
      end;
    except
      on E:Exception do
        ShowMessage('Ocorreu um erro: '+E.Message);
    end;
  finally
    if Cliente <> Nil then
      FreeAndNil(Cliente);
  end;
end;

procedure TFrmMain.GetProximoCliente(Value: integer);
  var Cliente :TCliente;
begin
  Cliente := Nil;
  try
    try
      Cliente := DM.GetProximo(Value);
      if Cliente <> Nil then
      begin
        with Cliente do
        begin
          EdtCadCodigo.Text := IntToStr(Codigo);
          RgpCadTipoPessoa.ItemIndex := TipoPessoa-1;
          if TipoPessoa = 1 then
          begin
            EdtCadNome.Text           := Nome;
            EdtCadCPF.Text            := CPF;
            EdtCadRG.Text             := RG;
            DTPCadDataNascimento.Date := DataNascimento;
          end
          else if TipoPessoa = 2 then
          begin
            EdtCadRazaoSocial.Text := RazaoSocial;
            EdtCadFantasia.Text := NomeFantasia;
            EdtCadCNPJ.Text := CNPJ;
          end;
          EdtCadEndereco.Text := Endereco;
          EdtCadNumero.Text   := Numero;
          EdtCadCEP.Text      := CEP;
          EdtCadCidade.Text   := Cidade;
          EdtCadUF.Text       := UF;
          EdtCadLimite.Text   := FloatToStr(LimiteCredito);
        end;
      end;
    except
      on E:Exception do
        ShowMessage('Ocorreu um erro: '+E.Message);
    end;
  finally
    if Cliente <> Nil then
      FreeAndNil(Cliente);
  end;
end;

procedure TFrmMain.Inserir;
var Cliente : TCliente;
begin
  Cliente := TCliente.Create;
  try
    try
      with Cliente do
      begin
        if EdtCadCodigo.Text <> '' then
          Codigo :=  StrToInt(EdtCadCodigo.Text);
        Nome       := EdtCadNome.Text;
        CPF        := TUtil.RemoveMascara(EdtCadCPF);
        RG         := EdtCadRG.Text;
        CNPJ       := TUtil.RemoveMascara(EdtCadCNPJ);
        TipoPessoa := RgpCadTipoPessoa.ItemIndex;
        Endereco   := EdtCadEndereco.Text;
        Numero     := EdtCadNumero.Text;
        CEP        := TUtil.RemoveMascara(EdtCadCEP);
        Cidade     := EdtCadCidade.Text;
        UF         := EdtCadUF.Text;
        if EdtCadLimite.Text <> '' then
          LimiteCredito := StrToFloat(EdtCadLimite.Text);
        DataNascimento := DTPCadDataNascimento.Date;
      end;
      if (Cliente.Codigo = 0) then
        DM.Inserir(Cliente)
      else
        DM.Alterar(Cliente);
      ShowMessage('Registro gravado com Sucesso!');
    except
      on E:Exception do
        ShowMessage('Ocorreu um erro ao inserir : '+E.Message);
    end;
  finally
    FreeAndNil(Cliente);
  end;
end;

end.
