unit U_Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_modelo, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TF_Venda = class(TF_modelo)
    DBG_Lista: TDBGrid;
    Btn_Adicionar: TBitBtn;
    Label19: TLabel;
    Btn_Remover: TBitBtn;
    Btn_Atualizar: TBitBtn;
    Edt_TVenda: TEdit;
    Edt_TProduto: TEdit;
    Edt_TDesconto: TEdit;
    FDQ_ItemVendaMax: TFDQuery;
    FDQ_ItemVendaMaxmaxid_itemvenda: TIntegerField;
    DS_ItemVenda: TDataSource;
    FDQ_ItemVenda: TFDQuery;
    CB_FormaPagamento: TComboBox;
    CB_Status: TComboBox;
    Btn_FormaPagamento: TBitBtn;
    dtp_Finalizacao: TDateTimePicker;
    dtp_Venda: TDateTimePicker;
    Edt_IDVenda: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label9: TLabel;
    MM_Observacao: TMemo;
    Label20: TLabel;
    Edt_IDCliente: TEdit;
    Label21: TLabel;
    MM_ClienteObs: TMemo;
    Label22: TLabel;
    FDQ_ItemVendaid_venda: TIntegerField;
    FDQ_ItemVendaid_itemvenda: TFDAutoIncField;
    FDQ_ItemVendaid_produto: TIntegerField;
    FDQ_ItemVendanome: TStringField;
    FDQ_ItemVendaquantidade: TIntegerField;
    FDQ_ItemVendavalorunitario: TSingleField;
    FDQ_ItemVendavalortotal: TSingleField;
    FDQ_ItemVendavalordesconto: TSingleField;
    FDQ_VerificaVenda: TFDQuery;
    FDQ_FormaPagamento: TFDQuery;
    FDQ_FormaPagamentoid_formadepagamento: TFDAutoIncField;
    FDQ_FormaPagamentonome: TStringField;
    FDQ_FormaPagamentostatus: TStringField;
    BindSourceDB1: TBindSourceDB;
    Edt_Qtde: TEdit;
    Label2: TLabel;
    Edt_IDItemVenda: TEdit;
    Label10: TLabel;
    Edt_IDProduto: TEdit;
    Label6: TLabel;
    Label8: TLabel;
    Edt_Desconto: TEdit;
    Edt_VUnitario: TEdit;
    Label3: TLabel;
    Edt_VDesconto: TEdit;
    Label4: TLabel;
    Edt_VTotal: TEdit;
    Label5: TLabel;
    Label7: TLabel;
    Btn_PesqProduto: TBitBtn;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    CB_Produto: TComboBox;
    Label23: TLabel;
    CB_Grupo: TComboBox;
    Label24: TLabel;
    CB_SubGrupo: TComboBox;
    FDQ_Grupo: TFDQuery;
    FDQ_Grupoid_grupo: TIntegerField;
    FDQ_Grupodata_cadastro: TDateField;
    FDQ_Gruponome: TStringField;
    FDQ_Grupostatus: TStringField;
    FDQ_SubGrupo: TFDQuery;
    FDQ_Produto: TFDQuery;
    FDQ_SubGrupoid_subgrupo: TFDAutoIncField;
    FDQ_SubGrupoid_grupo: TIntegerField;
    FDQ_SubGrupodatacadastro: TDateField;
    FDQ_SubGruponome: TStringField;
    FDQ_SubGrupostatus: TStringField;
    FDQ_Produtoid_produto: TFDAutoIncField;
    FDQ_Produtoid_marca: TIntegerField;
    FDQ_Produtoid_subgrupo: TIntegerField;
    FDQ_Produtodatacadastro: TDateField;
    FDQ_Produtocodigodebarras: TStringField;
    FDQ_Produtonome: TStringField;
    FDQ_Produtonomecomum: TStringField;
    FDQ_Produtopeso: TStringField;
    FDQ_Produtomedidas: TStringField;
    FDQ_Produtounidade: TStringField;
    FDQ_Produtomodelo: TStringField;
    FDQ_Produtonumfabricante: TStringField;
    FDQ_Produtoestoqueatual: TIntegerField;
    FDQ_Produtoestoqueminimo: TIntegerField;
    FDQ_Produtoultimocusto: TSingleField;
    FDQ_Produtovalorvenda: TSingleField;
    FDQ_Produtomargemlucro: TSingleField;
    FDQ_Produtodescontomax: TSingleField;
    FDQ_Produtoorigem: TIntegerField;
    FDQ_Produtoobservacao: TStringField;
    FDQ_Produtoimagem: TBlobField;
    FDQ_Produtostatus: TStringField;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    BindSourceDB3: TBindSourceDB;
    LinkListControlToField3: TLinkListControlToField;
    BindSourceDB4: TBindSourceDB;
    LinkListControlToField4: TLinkListControlToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    CB_Cliente: TComboBox;
    Btn_Cliente: TBitBtn;
    FDQ_Cliente: TFDQuery;
    FDQ_Clienteid_cliente: TFDAutoIncField;
    FDQ_Clientenome_razaosocial: TStringField;
    FDQ_Clientetipopessoa: TStringField;
    FDQ_Clientecpf_cnpj: TStringField;
    FDQ_Clienterg_ie: TStringField;
    FDQ_Clientetelefone: TStringField;
    FDQ_Clientecelular: TStringField;
    FDQ_Clienteendereco: TStringField;
    FDQ_Clientenumero: TStringField;
    FDQ_Clientebairro: TStringField;
    FDQ_Clientecomplemento: TStringField;
    FDQ_Clientecep: TStringField;
    FDQ_Clienteid_cidade: TIntegerField;
    FDQ_Clientepais: TStringField;
    FDQ_Clienteemail: TStringField;
    FDQ_Clientenomepai: TStringField;
    FDQ_Clientenomemae: TStringField;
    FDQ_Clientegenero: TStringField;
    FDQ_Clienteestadocivil: TStringField;
    FDQ_Clientegrauescolaridade: TStringField;
    FDQ_Clientelocaldetrabalho: TStringField;
    FDQ_Clienteid_cargo: TIntegerField;
    FDQ_Clienterenda: TBCDField;
    FDQ_Clientecontatotrabalho: TStringField;
    FDQ_Clienteid_referencia: TIntegerField;
    FDQ_Clientedatadecadastro: TDateField;
    FDQ_Clientedatanascimento: TDateField;
    FDQ_Clientestatus: TStringField;
    FDQ_Clienteobservacao: TMemoField;
    FDQ_Clienteautorizacoes: TStringField;
    FDQ_Clientevalormaxcred: TBCDField;
    FDQ_Clientenaturalidade: TStringField;
    FDQ_Clientenacionalidade: TStringField;
    BindSourceDB5: TBindSourceDB;
    LinkListControlToField5: TLinkListControlToField;
    LinkControlToField3: TLinkControlToField;
    FDQ_ValoresTotais: TFDQuery;
    FDQ_ValoresTotaisavgvalordesconto: TFloatField;
    FDQ_ValoresTotaisavgvalortotal: TFloatField;
    LinkControlToField4: TLinkControlToField;
    Label25: TLabel;
    Edt_IDUsuario: TEdit;
    Btn_Usuario: TBitBtn;
    Label26: TLabel;
    CB_Usuario: TComboBox;
    FDQ_Usuario: TFDQuery;
    FDQ_Usuarioid_usuario: TFDAutoIncField;
    FDQ_Usuarionome: TStringField;
    FDQ_Usuariostatus: TStringField;
    FDQ_Usuariosenha: TStringField;
    FDQ_Usuarioid_funcionario: TIntegerField;
    FDQ_Usuariofinanceiro: TStringField;
    FDQ_Usuariovenda: TStringField;
    FDQ_Usuariocompra: TStringField;
    FDQ_Usuariocaixa: TStringField;
    FDQ_Usuariocontasreceber: TStringField;
    FDQ_Usuariorelatoriogeral: TStringField;
    FDQ_Usuariorelatoriogestao: TStringField;
    FDQ_Usuariocasdastroproduto: TStringField;
    FDQ_Usuariocadastrousuario: TStringField;
    FDQ_Usuariocadastrofuncionario: TStringField;
    BindSourceDB6: TBindSourceDB;
    LinkListControlToField6: TLinkListControlToField;
    LinkControlToField5: TLinkControlToField;
    GB_Total: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    FDQ_ValoresTotaiscountid_itemvenda: TLargeintField;
    FDQ_ItemRemove: TFDQuery;
    FDQ_ItemRemoveid_itemvenda: TFDAutoIncField;
    FDQ_ItemRemoveid_produto: TIntegerField;
    FDQ_ItemRemovenomeProduto: TStringField;
    FDQ_ItemRemovequantidade: TIntegerField;
    FDQ_ItemRemovevalorunitario: TSingleField;
    FDQ_ItemRemovevalordesconto: TSingleField;
    FDQ_ItemRemovevalortotal: TSingleField;
    FDQ_ItemRemovenomeSubGrupo: TStringField;
    FDQ_ItemRemovenomeGrupo: TStringField;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure Btn_AdicionarClick(Sender: TObject);
    procedure CB_FormaPagamentoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CB_GrupoEnter(Sender: TObject);
    procedure CB_SubGrupoEnter(Sender: TObject);
    procedure CB_ProdutoEnter(Sender: TObject);
    procedure Btn_ClienteClick(Sender: TObject);
    procedure CB_ClienteEnter(Sender: TObject);
    procedure Edt_DescontoExit(Sender: TObject);
    procedure Edt_QtdeExit(Sender: TObject);
    procedure Btn_RemoverClick(Sender: TObject);
    procedure Btn_AtualizarClick(Sender: TObject);
    procedure DBG_ListaDblClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure CB_ProdutoExit(Sender: TObject);
  private
    procedure LimpaCampos;
    procedure FormaPagamento_CO;
    procedure Grupo_CO;
    procedure Produto_CO;
    procedure SubGrupo_CO;
    procedure DataToday;
    procedure Cliente_CO;
    procedure ValoresTotais_CO;
    procedure CalcularValorProduto;
    procedure DesativaCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Venda: TF_Venda;
  crud: string;
  cvp: string;

implementation

{$R *.dfm}

uses U_dm, U_Cliente;

procedure TF_Venda.Btn_AdicionarClick(Sender: TObject);
var
  sql: string;
begin
  inherited;
  FDQ_VerificaVenda.Close;
  FDQ_VerificaVenda.ParamByName('venda').AsString := Edt_IDVenda.Text;
  FDQ_VerificaVenda.Open();

  if (FDQ_VerificaVenda.RecordCount = 0) then
  begin
    sql := 'insert into venda (' + //
      'id_venda,' + //
      'id_cliente,' + //
      'id_usuario,' + //
      'datafinalizacao,' + //
      'datavenda,' + //
      'totaldesconto,' + //
      'totalprodutos,' + //
      'totalvenda,' + //
      'id_formapagamento,' + //
      'observacaos,' + //
      'status' + //
      ') values (' + //
      Edt_IDVenda.Text + ',' + //
      Edt_IDCliente.Text + ',' + //
    /// ///////////////////////////////Preciso do usuário aqui
      FormatDateTime('yyyy-mm-dd', dtp_Finalizacao.Date) + ',' + //
      FormatDateTime('yyyy-mm-dd', dtp_Venda.Date) + ',' + //
      Edt_TDesconto.Text + ',' + //
      Edt_TProduto.Text + ',' + //
      Edt_TVenda.Text + ',' + //
      FDQ_FormaPagamentoid_formadepagamento.AsString + ',' + //
      QuotedStr(MM_Observacao.Text) + ',' + //
      QuotedStr(CB_Status.Text) + //
      ')';
  end
  else
  begin
    sql := 'update venda set' + //
      ' datafinalizacao = ' + //
      FormatDateTime('yyyy-mm-dd', dtp_Finalizacao.Date) + //
      ', totaldesconto = ' + Edt_TDesconto.Text + //
      ', totalprodutos = ' + Edt_TProduto.Text + //
      ', totalvenda = ' + Edt_TVenda.Text + //
      ', id_formapagamento = ' + FDQ_FormaPagamentoid_formadepagamento.
      AsString + //
      ', observacaos = ' + QuotedStr(MM_Observacao.Text) + // \
      ', status = ' + QuotedStr(CB_Status.Text) + //
      ' where id_venda = ' + Edt_IDVenda.Text;
  end;

  DM.FD_Conexao.ExecSQL(sql);
  DM.FD_Conexao.CommitRetaining;
  sql := 'insert into itemvenda (' + //
    'id_itemvenda,' + //
    'id_produto,' + //
    'id_venda,' + //
    'quantidade,' + //
    'valorunitario,' + //
    'valordesconto,' + //
    'valortotal' + //
    ') values (' + //
    Edt_IDItemVenda.Text + ',' + //
    Edt_IDProduto.Text + ',' + //
    Edt_IDVenda.Text + ',' + //
    Edt_Qtde.Text + ',' + //
    Edt_VUnitario.Text + ',' + //
    Edt_VDesconto.Text + ',' + //
    Edt_VTotal.Text + //
    ')';
  ValoresTotais_CO;

end;

procedure TF_Venda.Btn_AtualizarClick(Sender: TObject);
begin
  inherited;
  FDQ_ItemVenda.Close;
  FDQ_ItemVenda.ParamByName('venda').AsString := Edt_IDVenda.Text;
  FDQ_ItemVenda.Open();
end;

procedure TF_Venda.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  LimpaCampos;
  DesativaCampos;
end;

procedure TF_Venda.Btn_ClienteClick(Sender: TObject);
begin
  inherited;
  F_Cliente.ShowModal;
end;

procedure TF_Venda.btn_novoClick(Sender: TObject);
begin
  inherited;
  DataToday;
  dtp_Venda.MinDate := dtp_Venda.Date; // Travar a data venda
  crud := 'Inserir';

  TabSheet2.Enabled := True;
  LimpaCampos;
  Edt_IDCliente.SetFocus;
  FDQ_ItemVendaMax.Close;
  FDQ_ItemVendaMax.Open();
  Edt_IDItemVenda.Text :=
    IntToStr(FDQ_ItemVendaMaxmaxid_itemvenda.AsInteger + 1);
  Cliente_CO;

end;

procedure TF_Venda.Btn_RemoverClick(Sender: TObject);
var
  sql: string;
begin
  inherited;
  sql := 'delete from itemvenda where id_itemvenda = ' + Edt_IDItemVenda.Text;
  ValoresTotais_CO;
  Btn_Remover.Enabled := False;
  ShowMessage(sql);
end;

procedure TF_Venda.btn_salvarClick(Sender: TObject);
var
  sql: string;
begin
  inherited;

  sql := 'update venda set ' + //
    ',id_cliente = ' + Edt_IDCliente.Text + //
    ',id_usuario = ' +
  /// ////////////////
    ',datafinalizacao = ' + FormatDateTime('yyyy-mm-dd', dtp_Finalizacao.Date) +
  //
    ',datavenda = ' + FormatDateTime('yyyy-mm-dd', dtp_Venda.Date) + //
    ',totaldesconto = ' + Edt_TDesconto.Text + //
    ',totalprodutos = ' + Edt_TProduto.Text + //
    ',totalvenda = ' + Edt_TVenda.Text + //
    ',id_formapagamento = ' + FDQ_FormaPagamentoid_formadepagamento.AsString +
  //
    ',observacaos = ' + QuotedStr(MM_Observacao.Text) + //
    ',status = ' + QuotedStr(CB_Status.Text) + //
    ' where id_venda = ' + Edt_IDVenda.Text;
  LimpaCampos;
  DesativaCampos;
end;

procedure TF_Venda.CB_ClienteEnter(Sender: TObject);
begin
  inherited;
  Cliente_CO;
end;

procedure TF_Venda.CB_FormaPagamentoEnter(Sender: TObject);
begin
  inherited;
  FormaPagamento_CO;
end;

procedure TF_Venda.CB_GrupoEnter(Sender: TObject);
begin
  inherited;
  Grupo_CO;
end;

procedure TF_Venda.CB_ProdutoEnter(Sender: TObject);
begin
  inherited;
  Produto_CO;
end;

procedure TF_Venda.CB_ProdutoExit(Sender: TObject);
begin
  inherited;
  Edt_Qtde.Text := '1';
  Edt_Desconto.Text := '0';
end;

procedure TF_Venda.CB_SubGrupoEnter(Sender: TObject);
begin
  inherited;
  SubGrupo_CO;
end;

procedure TF_Venda.FormShow(Sender: TObject);
begin
  inherited;
  DataToday;
  LimpaCampos;
  DesativaCampos;

  btn_novo.Enabled := true;
  btn_editar.Enabled := False;
  btn_salvar.Enabled := False;
  btn_cancelar.Enabled := False;
  btn_sair.Enabled := true;
end;

procedure TF_Venda.LimpaCampos;
begin
  crud := EmptyStr;
  cvp := EmptyStr;
  Edt_IDItemVenda.Text := EmptyStr;
  Edt_IDProduto.Text := EmptyStr;
  Edt_IDVenda.Text := EmptyStr;
  Edt_IDCliente.Text := EmptyStr;
  Edt_IDUsuario.Text := EmptyStr;
  CB_Cliente.Text := EmptyStr;
  CB_Usuario.Text := EmptyStr;
  CB_Grupo.Text := EmptyStr;
  CB_SubGrupo.Text := EmptyStr;
  CB_Produto.Text := EmptyStr;
  Edt_Qtde.Text := EmptyStr;
  Edt_VUnitario.Text := EmptyStr;
  Edt_VDesconto.Text := EmptyStr;
  Edt_VTotal.Text := EmptyStr;
  Edt_Desconto.Text := EmptyStr;
  Edt_TVenda.Text := EmptyStr;
  Edt_TProduto.Text := EmptyStr;
  Edt_TDesconto.Text := EmptyStr;
  MM_Observacao.Text := EmptyStr;
  CB_FormaPagamento.Text := EmptyStr;
  CB_Status.Text := EmptyStr;
end;

procedure TF_Venda.FormaPagamento_CO;
begin
  FDQ_FormaPagamento.Close;
  FDQ_FormaPagamento.Open;
end;

procedure TF_Venda.Grupo_CO;
begin
  FDQ_Grupo.Close;
  FDQ_Grupo.Open;
end;

procedure TF_Venda.Produto_CO;
begin
  FDQ_Produto.Close;
  FDQ_Produto.ParamByName('subgrupo').AsString :=
    FDQ_SubGrupoid_subgrupo.AsString;
  FDQ_Produto.Open;
end;

procedure TF_Venda.SubGrupo_CO;
begin
  FDQ_SubGrupo.Close;
  FDQ_SubGrupo.ParamByName('grupo').AsString := FDQ_Grupoid_grupo.AsString;
  FDQ_SubGrupo.Open;
end;

procedure TF_Venda.DataToday;
begin
  dtp_Finalizacao.Date := Date;
  dtp_Venda.Date := Date;
end;

procedure TF_Venda.DBG_ListaDblClick(Sender: TObject);
begin
  inherited;
  FDQ_ItemRemove.Close;
  FDQ_ItemRemove.ParamByName('venda').AsString :=
    FDQ_ItemVendaid_venda.AsString;
  FDQ_ItemRemove.Open();

  Edt_IDItemVenda.Text := FDQ_ItemRemoveid_itemvenda.AsString;
  CB_Grupo.Text := FDQ_ItemRemovenomeGrupo.AsString;
  CB_SubGrupo.Text := FDQ_ItemRemovenomeSubGrupo.AsString;
  Edt_IDProduto.Text := FDQ_ItemRemoveid_produto.AsString;
  CB_Produto.Text := FDQ_ItemRemovenomeProduto.AsString;
  Edt_Qtde.Text := FDQ_ItemRemovequantidade.AsString;
  Edt_VDesconto.Text := FDQ_ItemRemovevalordesconto.AsString;
  Edt_VUnitario.Text := FDQ_ItemRemovevalorunitario.AsString;
  Edt_VTotal.Text := FDQ_ItemRemovevalortotal.AsString;

  Edt_Desconto.Text := FloatToStr((FDQ_ItemRemovevalordesconto.AsFloat * 100) /
    (FDQ_ItemRemovevalordesconto.AsFloat + FDQ_ItemRemovevalortotal.AsFloat));

  Btn_Remover.Enabled := True;
end;

procedure TF_Venda.Edt_DescontoExit(Sender: TObject);
begin
  inherited;
  cvp := 'desconto';
  CalcularValorProduto;
end;

procedure TF_Venda.Edt_QtdeExit(Sender: TObject);
begin
  inherited;
  cvp := 'quantidade';
  CalcularValorProduto;
end;

procedure TF_Venda.Cliente_CO;
begin
  FDQ_Cliente.Close;
  FDQ_Cliente.Open;
end;

procedure TF_Venda.ValoresTotais_CO;
begin
  FDQ_ValoresTotais.Close;
  FDQ_ValoresTotais.ParamByName('venda').AsString := Edt_IDVenda.Text;
  FDQ_ValoresTotais.Open;

  Edt_TVenda.Text := FDQ_ValoresTotaisavgvalortotal.AsString;
  Edt_TProduto.Text := FDQ_ValoresTotaiscountid_itemvenda.AsString;
  Edt_TDesconto.Text := FDQ_ValoresTotaisavgvalordesconto.AsString;
end;

procedure TF_Venda.CalcularValorProduto;
var
  percent: Double;
  desconto: Double;
begin
  if (cvp = 'quantidade') then
  begin
    Edt_VTotal.Text := FloatToStr(StrToFloat(Edt_VUnitario.Text) *
      StrToFloat(Edt_Qtde.Text));
  end;
  if (cvp = 'desconto') then
  begin
    if (StrToFloat(Edt_Desconto.Text) > FDQ_Produtodescontomax.AsFloat) then
    begin
      ShowMessage('Desconto máximo desse produto é ' +
        FDQ_Produtodescontomax.AsString);
      Edt_Desconto.SetFocus;
    end
    else
    begin
      percent := StrToFloat(Edt_Desconto.Text) / 100;
      desconto := StrToFloat(Edt_VUnitario.Text) * percent;
      Edt_VDesconto.Text := FloatToStr(desconto);
      Edt_VTotal.Text := FloatToStr(StrToFloat(Edt_VUnitario.Text) - desconto);
    end;
  end;

end;

procedure TF_Venda.DesativaCampos;
begin
  Btn_Adicionar.Enabled := False;
  Btn_Remover.Enabled := False;
  Btn_Atualizar.Enabled := False;
  TabSheet2.Enabled := False;
end;

end.
