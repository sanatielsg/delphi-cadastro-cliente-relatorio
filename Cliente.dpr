program Cliente;

uses
  Vcl.Forms,
  u_main in 'u_main.pas' {FrmMain},
  u_dm in 'u_dm.pas' {DM: TDataModule},
  u_cliente in 'u_cliente.pas',
  u_util in 'u_util.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
