unit u_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, u_dm, u_cliente,
  Data.DB, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TFrmMain = class(TForm)
    PgcMain: TPageControl;
    TSCadastro: TTabSheet;
    TSConsulta: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Button2: TButton;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    GroupBox3: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label3: TLabel;
    Button3: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Button4: TButton;
    ImageList: TImageList;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit1: TEdit;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    RadioGroup3: TRadioGroup;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    Edit3: TEdit;
    GroupBox5: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    MaskEdit2: TMaskEdit;
    TabSheet4: TTabSheet;
    GroupBox6: TGroupBox;
    Label11: TLabel;
    Edit6: TEdit;
    Label12: TLabel;
    Edit7: TEdit;
    MaskEdit3: TMaskEdit;
    Label13: TLabel;
    Label14: TLabel;
    Edit8: TEdit;
    Label15: TLabel;
    Edit9: TEdit;
    TabSheet5: TTabSheet;
    GroupBox7: TGroupBox;
    Label16: TLabel;
    Edit10: TEdit;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

{ TFrmMain }

end.
