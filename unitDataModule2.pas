unit unitDataModule2;

interface

uses
    System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
    FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
    FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
    FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
    FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
    FireDAC.Comp.Client;

type
    Tdm = class( TDataModule )
        DBConexao: TFDConnection;
        TableClientes: TFDTable;
        DataSourceClientes: TDataSource;
        TableClientesid: TFDAutoIncField;
        TableClientesnome: TStringField;
        TableClientesendereco: TStringField;
        TableClientesativo: TBooleanField;
        SqlClientesAtivos: TFDQuery;
        SqlClientesInativos: TFDQuery;
        DataSourceClientesAtivos: TDataSource;
        DataSourceClientesInativos: TDataSource;
        private
            { Private declarations }
        public
            { Public declarations }
    end;

var
    dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
