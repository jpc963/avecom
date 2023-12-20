program Project1;

uses
  Vcl.Forms,
  unitMain in 'unitMain.pas' {FormMain},
  Vcl.Themes,
  Vcl.Styles,
  unitDataModule2 in 'unitDataModule2.pas' {dm: TDataModule},
  unitNovoCliente in 'unitNovoCliente.pas' {FormNovoCliente},
  unitImpressao in 'unitImpressao.pas' {FormImpressao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFormNovoCliente, FormNovoCliente);
  Application.CreateForm(TFormImpressao, FormImpressao);
  Application.Run;
end.
