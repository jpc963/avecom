unit unitMain;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Mask,
    Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
    TFormMain = class( TForm )
        BtnConsultar: TButton;
        LabelCodigo: TLabel;
        BtnNovo: TButton;
        LabelNome: TLabel;
        BtnAlterar: TButton;
        LabelAtivo: TLabel;
        BtnExcluir: TButton;
        DBTabela: TDBGrid;
        LabelEndereco: TLabel;
        BtnImprimir: TButton;
        BtnSair: TButton;
        InputCodigo: TEdit;
        BtnPrimeiro: TButton;
        BtnAnterior: TButton;
        BtnProximo: TButton;
        BtnUltimo: TButton;
        DBInputNome: TDBEdit;
        DBInputEndereco: TDBEdit;
        DBCheckBox: TDBCheckBox;
        BtnSalvar: TButton;
        BtnCancelar: TButton;
        procedure BtnConsultarClick( Sender: TObject );
        procedure BtnSairClick( Sender: TObject );
        procedure BtnNovoClick( Sender: TObject );
        procedure BtnPrimeiroClick( Sender: TObject );
        procedure BtnProximoClick( Sender: TObject );
        procedure HabilitarBotoes( );
        procedure BtnAlterarClick( Sender: TObject );
        procedure BtnExcluirClick( Sender: TObject );
        procedure BtnSalvarClick( Sender: TObject );
        procedure BtnUltimoClick( Sender: TObject );
        procedure BtnAnteriorClick( Sender: TObject );
        procedure BtnCancelarClick( Sender: TObject );
        procedure BtnImprimirClick( Sender: TObject );
        private
            { Private declarations }
        public
            { Public declarations }
    end;

var
    FormMain: TFormMain;

implementation

{$R *.dfm}

uses unitDataModule2, unitNovoCliente, unitImpressao;

procedure TFormMain.BtnConsultarClick( Sender: TObject );
    begin
        if dm.TableClientes.Locate( 'id', InputCodigo.Text ) = true then
            dm.TableClientes.Locate( 'id', InputCodigo.Text )
        else
            ShowMessage( 'Nenhum cliente encontrado com o c�digo: ' +
              InputCodigo.Text );
    end;

procedure TFormMain.BtnNovoClick( Sender: TObject );
    var
        prox: integer;
    begin
        HabilitarBotoes;
        dm.TableClientes.Last;
        prox := dm.TableClientes.FieldByName( 'id' ).AsInteger + 1;
        dm.TableClientes.Append;
        dm.TableClientes.FieldByName( 'id' ).AsInteger := prox;
        DBInputNome.SetFocus;
    end;

procedure TFormMain.BtnAlterarClick( Sender: TObject );
    begin
        HabilitarBotoes;
        if MessageDlg( 'Deseja editar este registro?', mtConfirmation,
          [ mbOk, mbNo ], 0 ) = mrOk then
            begin
                dm.TableClientes.Edit;
                DBInputNome.SetFocus;
            end
        else
            HabilitarBotoes;
        Abort;
    end;

procedure TFormMain.BtnExcluirClick( Sender: TObject );
    begin
        HabilitarBotoes;
        if MessageDlg( 'Deseja deletar este registro?', mtConfirmation,
          [ mbOk, mbNo ], 0 ) = mrOk then
            begin
                dm.TableClientes.Delete;
                MessageDlg( 'Registro deletado com sucesso', mtConfirmation,
                  [ mbOk ], 0 );
                HabilitarBotoes;
            end
        else
            HabilitarBotoes;
        Abort;

    end;

procedure TFormMain.BtnImprimirClick( Sender: TObject );
    begin
        DBTabela.Refresh;
        FormImpressao.ShowModal;
    end;

procedure TFormMain.BtnSalvarClick( Sender: TObject );
    begin
        HabilitarBotoes;
        dm.TableClientes.Post;
        MessageDlg( 'Registro salvo com sucesso', mtConfirmation, [ mbOk ], 0 );
    end;

procedure TFormMain.BtnCancelarClick( Sender: TObject );
    begin
        HabilitarBotoes;
        dm.TableClientes.Cancel;
    end;

procedure TFormMain.BtnPrimeiroClick( Sender: TObject );
    begin
        dm.TableClientes.First;
    end;

procedure TFormMain.BtnAnteriorClick( Sender: TObject );
    begin
        dm.TableClientes.Prior;
    end;

procedure TFormMain.BtnProximoClick( Sender: TObject );
    begin
        dm.TableClientes.Next;
    end;

procedure TFormMain.BtnUltimoClick( Sender: TObject );
    begin
        dm.TableClientes.Last;
    end;

procedure TFormMain.BtnSairClick( Sender: TObject );
    begin
        Application.Terminate;
    end;

procedure TFormMain.HabilitarBotoes;
    begin
        BtnNovo.Enabled := not BtnNovo.Enabled;
        BtnAlterar.Enabled := not BtnAlterar.Enabled;
        BtnExcluir.Enabled := not BtnExcluir.Enabled;
        BtnSalvar.Enabled := not BtnSalvar.Enabled;
        BtnCancelar.Enabled := not BtnCancelar.Enabled;

        InputCodigo.Enabled := not InputCodigo.Enabled;
        DBInputNome.Enabled := not DBInputNome.Enabled;
        DBInputEndereco.Enabled := not DBInputEndereco.Enabled;
    end;

end.
