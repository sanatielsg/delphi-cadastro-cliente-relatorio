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
  u_util, frxClass, frxDBSet
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
    PgcDados: TPageControl;
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
    frxRepAniversariantes: TfrxReport;
    frxDBDataset: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure BtnCadInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCadProximoClick(Sender: TObject);
    procedure BtnCadAnteriorClick(Sender: TObject);
    procedure BtnCadNovoClick(Sender: TObject);
    procedure BtnCadCancelarClick(Sender: TObject);
    procedure GrdConsultaDBTableView1DblClick(Sender: TObject);
    procedure BtnCadExcluirClick(Sender: TObject);
    procedure RgpCadTipoPessoaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCadUltimoClick(Sender: TObject);
    procedure BtnCadPrimeiroClick(Sender: TObject);
    procedure BrnRelAniversariantesClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure InserirOuAlterar();
    procedure GetCliente(Value: integer);
    procedure GetProximoCliente(Value: integer);
    procedure GetAnteriorCliente(Value: integer);
    procedure ResetarCampos();
    procedure Resetar(Value : TGroupBox);
    procedure ResetarForm();
    procedure EstadoBotoes(Value : integer);
    procedure GetUltimoCliente();
    procedure GetPrimeiroCliente();
  end;

var
  FrmMain: TFrmMain;

const
  BOTAO_NOVO      = 1;
  BOTAO_INSERIR   = 2;
  BOTAO_EXCLUIR   = 3;
  BOTAO_CANCELAR  = 4;
  BOTAO_CONSULTAR = 5;
  TIPO_PF = 0;
  TIPO_PJ = 1;

implementation

{$R *.dfm}

{ TFrmMain }

procedure TFrmMain.BrnRelAniversariantesClick(Sender: TObject);
begin
  frxRepAniversariantes.ShowReport(True);
end;

procedure TFrmMain.BtnCadAnteriorClick(Sender: TObject);
  var pos: integer;
begin
  ResetarForm;

  if EdtCadCodigo.Text <> '' then
    GetAnteriorCliente(StrToInt(EdtCadCodigo.Text))
  else
    GetAnteriorCliente(999999999);
end;
procedure TFrmMain.BtnCadCancelarClick(Sender: TObject);
begin
 EstadoBotoes(BOTAO_CANCELAR);
 EdtCadCodigo.Enabled := True;
 ResetarForm;
end;

procedure TFrmMain.BtnCadExcluirClick(Sender: TObject);
begin
  EdtCadCodigo.Enabled := True;
end;

procedure TFrmMain.BtnCadInserirClick(Sender: TObject);
begin
  InserirOuAlterar();
  EstadoBotoes(BOTAO_INSERIR);
  EdtCadCodigo.Enabled := True;
  ResetarForm;
end;

procedure TFrmMain.BtnCadNovoClick(Sender: TObject);
begin
  ResetarForm;
  EstadoBotoes(BOTAO_NOVO);
  RgpCadTipoPessoa.Enabled := True;
  RgpCadTipoPessoa.ItemIndex := 0;
  GbxCadPF.Enabled := True;
  EdtCadCodigo.Text := '';
  EdtCadCodigo.Enabled := False;
  EdtCadNome.SetFocus;
end;

procedure TFrmMain.BtnCadPrimeiroClick(Sender: TObject);
begin
  ResetarForm;
  GetPrimeiroCliente;
end;

procedure TFrmMain.BtnCadProximoClick(Sender: TObject);
  var pos: integer;
begin
  ResetarForm;

  if EdtCadCodigo.Text <> '' then
    GetProximoCliente(StrToInt(EdtCadCodigo.Text))
  else
    GetProximoCliente(0);
end;

procedure TFrmMain.BtnCadUltimoClick(Sender: TObject);
begin
  ResetarForm;
  GetUltimoCliente();
end;

procedure TFrmMain.EstadoBotoes(Value: integer);
begin
  case Value of
   1 : begin
      BtnCadNovo.Enabled     :=False;
      BtnCadInserir.Enabled  := True;
      BtnCadExcluir.Enabled  := False;
      BtnCadCancelar.Enabled := True;
   end;
   2..4 : begin
      BtnCadNovo.Enabled     := True;
      BtnCadInserir.Enabled  := False;
      BtnCadExcluir.Enabled  := False;
      BtnCadCancelar.Enabled := False;
   end;
  end;
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

procedure TFrmMain.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  PnlNavegador.Enabled := True;
  BtnCadNovo.Enabled := True;
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

procedure TFrmMain.GetPrimeiroCliente;
 var Cliente :TCliente;
begin
  Cliente := Nil;
  try
    try
      Cliente := DM.GetPrimeiro;
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

procedure TFrmMain.GetUltimoCliente;
 var Cliente :TCliente;
begin
  Cliente := Nil;
  try
    try
      Cliente := DM.GetUltimo;
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

procedure TFrmMain.GrdConsultaDBTableView1DblClick(Sender: TObject);
  var Db : TcxGridDBTableView;
begin
  ResetarForm;
  Db :=  GrdConsultaDBTableView1;
  GetCliente(Db.DataController.Values[DB.DataController.FocusedRecordIndex, 0]);
  Db := Nil;
  Db.Free;
  PgcMain.TabIndex := 0;
end;

procedure TFrmMain.InserirOuAlterar;
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
        TipoPessoa := RgpCadTipoPessoa.ItemIndex + 1;
        Endereco   := EdtCadEndereco.Text;
        Numero     := EdtCadNumero.Text;
        CEP        := TUtil.RemoveMascara(EdtCadCEP);
        Cidade     := EdtCadCidade.Text;
        UF         := EdtCadUF.Text;
        if EdtCadLimite.Text <> '' then
          LimiteCredito := StrToFloat(EdtCadLimite.Text);
        DataNascimento := DTPCadDataNascimento.Date;
        RazaoSocial    := EdtCadRazaoSocial.Text;
        NomeFantasia   := EdtCadFantasia.Text;
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

procedure TFrmMain.Resetar(Value: TGroupBox);
var
  I : Integer;
begin
  for I := 0 to Value.ControlCount - 1  do
  begin
    if Value.Controls[I] is TEdit then
      (Value.Controls[I] as TEdit).Text := '';
    if Value.Controls[I] is TMaskEdit then
      (Value.Controls[I] as TMaskEdit).Text := '';
  end;

end;

procedure TFrmMain.ResetarCampos;
var
  I: Integer;
begin
  for I := 0 to Self.ControlCount -1 do
    if (Self.Controls[I] is TEdit) then
      (Controls[I] as TEdit).Text := '';
end;

procedure TFrmMain.ResetarForm;
begin
  Resetar(GbxCadPF);
  Resetar(GbxCadPJ);
  Resetar(GbxCadEndereco);
  Resetar(GbxCadFinanceiro);
end;

procedure TFrmMain.RgpCadTipoPessoaClick(Sender: TObject);
begin
    case RgpCadTipoPessoa.ItemIndex of
      TIPO_PF: begin
        GbxCadPF.Enabled := True;
        GbxCadPJ.Enabled := False;
      end;
      TIPO_PJ: begin
        GbxCadPF.Enabled := False;
        GbxCadPJ.Enabled := True;
      end;
    end;
end;

end.
