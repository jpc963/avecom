unit unitImpressao;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, frxClass,
    frxExportBaseDialog, frxExportPDF, frxDBSet, frCoreClasses;

type
    TFormImpressao = class( TForm )
        LabelMensagem: TLabel;
        BtnFiltroAtivos: TButton;
        BtnFiltroInativos: TButton;
        BtnFiltroTodos: TButton;
        Relatorio: TfrxReport;
        FrxClientes: TfrxDBDataset;
        frxPDFExport1: TfrxPDFExport;
        procedure BtnFiltroTodosClick( Sender: TObject );
        procedure BtnFiltroAtivosClick( Sender: TObject );
        procedure BtnFiltroInativosClick( Sender: TObject );
        private
            { Private declarations }
        public
            { Public declarations }
    end;

var
    FormImpressao: TFormImpressao;

implementation

{$R *.dfm}

uses unitDataModule2;

procedure TFormImpressao.BtnFiltroTodosClick( Sender: TObject );
    begin
        FrxClientes.DataSource := dm.DataSourceClientes;
        Relatorio.ShowReport( );
    end;

procedure TFormImpressao.BtnFiltroAtivosClick( Sender: TObject );
    begin
        FrxClientes.DataSource := dm.DataSourceClientesAtivos;
        Relatorio.ShowReport( );
    end;

procedure TFormImpressao.BtnFiltroInativosClick( Sender: TObject );
    begin
        FrxClientes.DataSource := dm.DataSourceClientesInativos;
        Relatorio.ShowReport( );
    end;

end.
