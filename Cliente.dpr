program Cliente;

uses
  Vcl.Forms,
  u_main in 'u_main.pas' {FrmMain},
  u_dm in 'u_dm.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
