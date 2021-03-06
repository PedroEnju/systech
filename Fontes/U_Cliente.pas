unit U_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_modelo, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask;

type
  TF_Cliente = class(TF_modelo)
    Label2: TLabel;
    Edt_IDCliente: TEdit;
    Label3: TLabel;
    RG_TipoPessoa: TRadioGroup;
    Label8: TLabel;
    Edt_RazaoSocial: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edt_Endereco: TEdit;
    Label12: TLabel;
    Edt_Numero: TEdit;
    Label13: TLabel;
    Edt_Bairro: TEdit;
    Label14: TLabel;
    Edt_Complemento: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    CB_Cidade: TComboBox;
    FDQCidade: TFDQuery;
    FDQCidadenome: TStringField;
    FDQCidadeid_cidade: TFDAutoIncField;
    FDQCidadeid_estado: TIntegerField;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    Edt_Pais: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Edt_Email: TEdit;
    FDQCargo: TFDQuery;
    FDQCargoid_cargo: TFDAutoIncField;
    FDQCargonome_cargo: TStringField;
    FDQCargostatus: TStringField;
    BindSourceDB2: TBindSourceDB;
    FDQReferencia: TFDQuery;
    FDQReferenciaid_referencia: TFDAutoIncField;
    FDQReferenciaempresaref: TStringField;
    FDQReferenciatelefone: TStringField;
    FDQReferenciastatus: TStringField;
    BindSourceDB3: TBindSourceDB;
    RG_Status: TRadioGroup;
    Label29: TLabel;
    Mm_Obs: TMemo;
    Edt_UF: TEdit;
    Label31: TLabel;
    FDQCidadeuf: TStringField;
    LinkControlToField1: TLinkControlToField;
    FDQCliente: TFDQuery;
    FDQClienteid_cliente: TFDAutoIncField;
    FDQClientenome_razaosocial: TStringField;
    FDQClientetipopessoa: TStringField;
    FDQClientecpf_cnpj: TStringField;
    FDQClienterg_ie: TStringField;
    FDQClientetelefone: TStringField;
    FDQClientecelular: TStringField;
    FDQClienteendereco: TStringField;
    FDQClientenumero: TStringField;
    FDQClientebairro: TStringField;
    FDQClientecomplemento: TStringField;
    FDQClientecep: TStringField;
    FDQClienteid_cidade: TIntegerField;
    FDQClientepais: TStringField;
    FDQClienteemail: TStringField;
    FDQClientenomepai: TStringField;
    FDQClientenomemae: TStringField;
    FDQClientegenero: TStringField;
    FDQClienteestadocivil: TStringField;
    FDQClientegrauescolaridade: TStringField;
    FDQClientelocaldetrabalho: TStringField;
    FDQClienteid_cargo: TIntegerField;
    FDQClienterenda: TBCDField;
    FDQClientecontatotrabalho: TStringField;
    FDQClienteid_referencia: TIntegerField;
    FDQClientedatadecadastro: TDateField;
    FDQClientedatanascimento: TDateField;
    FDQClientestatus: TStringField;
    FDQClienteobservacao: TMemoField;
    FDQClienteautorizacoes: TStringField;
    FDQClientevalormaxcred: TBCDField;
    FDQClientenaturalidade: TStringField;
    FDQClientenacionalidade: TStringField;
    FDQ_ClienteMax: TFDQuery;
    FDQ_ClienteMaxmaxid_cliente: TIntegerField;
    Edt_Telefone: TDBEdit;
    Edt_Celular: TDBEdit;
    Edt_CEP: TDBEdit;
    FDQ_C: TFDQuery;
    FDQ_Cid_cliente: TFDAutoIncField;
    FDQ_Cnome_razaosocial: TStringField;
    FDQ_Ctipopessoa: TStringField;
    FDQ_Ccpf_cnpj: TStringField;
    FDQ_Crg_ie: TStringField;
    FDQ_Ctelefone: TStringField;
    FDQ_Ccelular: TStringField;
    FDQ_Cendereco: TStringField;
    FDQ_Cnumero: TStringField;
    FDQ_Cbairro: TStringField;
    FDQ_Ccomplemento: TStringField;
    FDQ_Ccep: TStringField;
    FDQ_Cid_cidade: TIntegerField;
    FDQ_Cpais: TStringField;
    FDQ_Cemail: TStringField;
    FDQ_Cnomepai: TStringField;
    FDQ_Cnomemae: TStringField;
    FDQ_Cgenero: TStringField;
    FDQ_Cestadocivil: TStringField;
    FDQ_Cgrauescolaridade: TStringField;
    FDQ_Clocaldetrabalho: TStringField;
    FDQ_Cid_cargo: TIntegerField;
    FDQ_Crenda: TBCDField;
    FDQ_Ccontatotrabalho: TStringField;
    FDQ_Cid_referencia: TIntegerField;
    FDQ_Cdatadecadastro: TDateField;
    FDQ_Cdatanascimento: TDateField;
    FDQ_Cstatus: TStringField;
    FDQ_Cobservacao: TMemoField;
    FDQ_Cautorizacoes: TStringField;
    FDQ_Cvalormaxcred: TBCDField;
    FDQ_Cnaturalidade: TStringField;
    FDQ_Cnacionalidade: TStringField;
    DS: TDataSource;
    FDQCidadeEdit: TFDQuery;
    FDQCidadeEditnome: TStringField;
    FDQCidadeEditid_cidade: TFDAutoIncField;
    FDQCidadeEditid_estado: TIntegerField;
    FDQCidadeEdituf: TStringField;
    DS_Cliente: TDataSource;
    Label4: TLabel;
    Edt_CPFCNPJ: TDBEdit;
    Label5: TLabel;
    Edt_RGIE: TEdit;
    Label23: TLabel;
    Edt_LocalTrabalho: TEdit;
    Label24: TLabel;
    CB_Cargo: TComboBox;
    Edt_Renda: TEdit;
    Label25: TLabel;
    CB_Referencia: TComboBox;
    Label27: TLabel;
    Edt_ContatoTrabalho: TEdit;
    Label26: TLabel;
    RG_Sexo: TRadioGroup;
    Edt_NomePai: TEdit;
    Label19: TLabel;
    Label28: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label20: TLabel;
    Edt_NomeMae: TEdit;
    Label33: TLabel;
    Edt_Naturalidade: TEdit;
    Label35: TLabel;
    Edt_ValorMaxCred: TEdit;
    Edt_Autorizacoes: TEdit;
    Label34: TLabel;
    Edt_Nacionalidade: TEdit;
    Label32: TLabel;
    CB_EstadoCivil: TComboBox;
    CB_Escolaridade: TComboBox;
    LinkListControlToField2: TLinkListControlToField;
    LinkListControlToField3: TLinkListControlToField;
    Btn_Cidade: TBitBtn;
    Btn_Cargo: TBitBtn;
    Btn_Referencia: TBitBtn;
    DTP_DataNascimento: TDateTimePicker;
    DTP_DataCadastro: TDateTimePicker;
    Memo1: TMemo;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure Edt_DataNascimentoEnter(Sender: TObject);
    procedure EdtPesquisarExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CB_CidadeEnter(Sender: TObject);
    procedure CB_CargoEnter(Sender: TObject);
    procedure CB_ReferenciaEnter(Sender: TObject);
    procedure CB_EstadoCivilEnter(Sender: TObject);
    procedure CB_EscolaridadeEnter(Sender: TObject);
    procedure Edt_RendaEnter(Sender: TObject);
    procedure Edt_ValorMaxCredEnter(Sender: TObject);
    procedure CB_ReferenciaJEnter(Sender: TObject);
    procedure RG_TipoPessoaClick(Sender: TObject);
    procedure Btn_CidadeClick(Sender: TObject);
    procedure Btn_CargoClick(Sender: TObject);
    procedure Btn_ReferenciaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure AtivaCampos;
    procedure DesativaCampos;
    procedure LimpaCampos;
    procedure OptionONE;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Cliente: TF_Cliente;
  crud: string;

implementation

{$R *.dfm}

uses U_dm, U_Cidade, U_Cargo, U_Referenciacomercial;

procedure TF_Cliente.BitBtn1Click(Sender: TObject);
begin
  inherited;
  FDQ_C.Close;
  FDQ_C.ParamByName('NomeCliente').AsString := EdtPesquisar.Text + '%';
  FDQ_C.Open();
end;

procedure TF_Cliente.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  LimpaCampos;
  DesativaCampos;
end;

procedure TF_Cliente.Btn_CargoClick(Sender: TObject);
begin
  inherited;
  F_Cargo.ShowModal;
end;

procedure TF_Cliente.Btn_CidadeClick(Sender: TObject);
begin
  inherited;
  F_Cidade.ShowModal;
end;

procedure TF_Cliente.btn_editarClick(Sender: TObject);
begin
  inherited;
  AtivaCampos;
  Edt_RazaoSocial.SetFocus;
  FDQ_C.Close;
  FDQ_C.Open();
  crud := 'Alterar';
end;

procedure TF_Cliente.btn_novoClick(Sender: TObject);
var
  max: Integer;
begin
  inherited;
  Consultar.TabIndex := 1;
  crud := 'Inserir';
  AtivaCampos;
  LimpaCampos;
  Edt_RazaoSocial.SetFocus;
  DTP_DataCadastro.Date := Date;
  FDQ_ClienteMax.Close;
  FDQ_ClienteMax.Open();
  max := FDQ_ClienteMaxmaxid_cliente.AsInteger + 1;
  Edt_IDCliente.Text := IntToStr(max);
  RG_TipoPessoa.ItemIndex := 0;
  RG_Sexo.ItemIndex := -1;
  RG_Status.ItemIndex := 0;
  FDQCliente.Close;
  FDQCliente.Open();
  FDQClientecpf_cnpj.EditMask := '000.000.000-00;1;_';
  CB_Cidade.Text := 'Escolha uma Cidade';
  CB_Referencia.Text := 'Escolha uma Refer�ncia';
  CB_Cargo.Text := 'Escolha um Cargo';
  CB_EstadoCivil.Text := 'Escolha um Estado Civil';
  CB_Escolaridade.Text := 'Escolha um Grau de Escolaridade';
end;

procedure TF_Cliente.Btn_ReferenciaClick(Sender: TObject);
begin
  inherited;
  F_Referenciacomercial.ShowModal;
end;

procedure TF_Cliente.btn_sairClick(Sender: TObject);
begin
  inherited;
  LimpaCampos;
  DesativaCampos;
end;

procedure TF_Cliente.btn_salvarClick(Sender: TObject);
var
  sql: string;
  status: string;
  tipoPessoa: string;
  genero: string;
  dataCadastro, dataNascimento: string;
  cargo, referencia: string;
begin
  inherited;
  dataCadastro := FormatDateTime('ddmmyyyy', DTP_DataCadastro.Date);
  dataNascimento := FormatDateTime('ddmmyyyy', DTP_DataNascimento.Date);

  if dataNascimento >= dataCadastro then
  begin
    ShowMessage('Data de Nascimento incorreta!!!');
    Consultar.TabIndex := 1;
    DTP_DataNascimento.SetFocus;
    OptionONE;
    exit;
  end;
  if (Edt_CPFCNPJ.Text = '') then
  begin
    ShowMessage('CPF/CNPJ n�o pode ser em branco!!!');
    Consultar.TabIndex := 1;
    Edt_CPFCNPJ.SetFocus;
    OptionONE;
    exit;
  end
  else if (Edt_RazaoSocial.Text = '') then
  begin
    ShowMessage('O campo NOME n�o pode ser em branco!!!');
    Consultar.TabIndex := 1;
    Edt_RazaoSocial.SetFocus;
    OptionONE;
    exit;
  end
  else if (CB_Cidade.Text = 'Escolha uma Cidade') then
  begin
    ShowMessage('Cidade n�o pode ser em branco!!!');
    Consultar.TabIndex := 1;
    CB_Cidade.SetFocus;
    OptionONE;
    exit;
  end
  else if crud = 'Inserir' then
  begin
    if (RG_Status.ItemIndex = 0) then
      status := 'A'
    else
      status := 'I';

    if (RG_TipoPessoa.ItemIndex = 0) then
    begin
      tipoPessoa := 'F';
    end
    else
    begin
      tipoPessoa := 'J';
    end;

    if (RG_Sexo.ItemIndex = 0) then
    begin
      genero := 'F';
    end
    else if (RG_Sexo.ItemIndex = 1) then
    begin
      genero := 'M';
    end;

    if (CB_Cargo.Text = 'Escolha um Cargo') then
      CB_Cargo.Text := EmptyStr;
    if (CB_Referencia.Text = 'Escolha uma Refer�ncia') then
      CB_Referencia.Text := EmptyStr;
    if (CB_EstadoCivil.Text = 'Escolha um Estado Civil') then
      CB_EstadoCivil.ItemIndex := 0;
    if (CB_Escolaridade.Text = 'Escolha um Grau de Escolaridade') then
      CB_Escolaridade.Text := EmptyStr;

    if CB_Cargo.Text = '' then
      cargo := '1'
    else
      cargo := FDQCargoid_cargo.AsString;

    if CB_Referencia.Text = '' then
      referencia := '1'
    else
      referencia := FDQReferenciaid_referencia.AsString;

    sql := 'insert into Cliente(' + //
      'nome_razaosocial,' + //
      'tipopessoa,' + //
      'cpf_cnpj,' + //
      'rg_ie,' + //
      'telefone,' + //
      'celular,' + //
      'endereco,' + //
      'numero,' + //
      'bairro,' + //
      'complemento,' + //
      'cep,' + //
      'id_cidade,' + //
      'pais,' + //
      'email,' + //
      'nomepai,' + //
      'nomemae,' + //
      'genero,' + //
      'estadocivil,' + //
      'grauescolaridade,' + //
      'localdetrabalho,' + //
      'id_cargo,' + //
      'renda,' + //
      'contatotrabalho,' + //
      'id_referencia,' + //
      'datadecadastro,' + //
      'datanascimento,' + //
      'status,' + //
      'observacao,' + //
      'autorizacoes,' + //
      'valormaxcred,' + //
      'naturalidade,' + //
      'nacionalidade' + //
      ') values (' + //
      QuotedStr(Edt_RazaoSocial.Text) + ',' + //
      QuotedStr(tipoPessoa) + ',' + //
      QuotedStr(Edt_CPFCNPJ.Text) + ',' + //
      QuotedStr(Edt_RGIE.Text) + ',' + //
      QuotedStr(Edt_Telefone.Text) + ',' + //
      QuotedStr(Edt_Celular.Text) + ',' + //
      QuotedStr(Edt_Endereco.Text) + ',' + //
      QuotedStr(Edt_Numero.Text) + ',' + //
      QuotedStr(Edt_Bairro.Text) + ',' + //
      QuotedStr(Edt_Complemento.Text) + ',' + //
      QuotedStr(Edt_CEP.Text) + ',' + //
      FDQCidadeid_cidade.AsString + ',' + //
      QuotedStr(Edt_Pais.Text) + ',' + //
      QuotedStr(Edt_Email.Text) + ',' + //
      QuotedStr(Edt_NomePai.Text) + ',' + //
      QuotedStr(Edt_NomeMae.Text) + ',' + //
      QuotedStr(genero) + ',' + //
      QuotedStr(IntToStr(CB_EstadoCivil.ItemIndex + 1)) + ',' + //
      QuotedStr(CB_Escolaridade.Text) + ',' + //
      QuotedStr(Edt_LocalTrabalho.Text) + ',' + //
      cargo + ',' + //
      Edt_Renda.Text + ',' + //
      QuotedStr(Edt_ContatoTrabalho.Text) + ',' + //
      referencia + ',' + //
      QuotedStr(FormatDateTime('yyyy-mm-dd', DTP_DataCadastro.Date)) + ',' +
    //
      QuotedStr(FormatDateTime('yyyy-mm-dd', DTP_DataNascimento.Date)) + ',' +
    //
      QuotedStr(status) + ',' + //
      QuotedStr(Mm_Obs.Text) + ',' + //
      QuotedStr(Edt_Autorizacoes.Text) + ',' + //
      Edt_ValorMaxCred.Text + ',' + //
      QuotedStr(Edt_Naturalidade.Text) + ',' + //
      QuotedStr(Edt_Nacionalidade.Text) + ')';

    DM.FD_Conexao.ExecSQL(sql);
    DM.FD_Conexao.CommitRetaining;

    DesativaCampos;
    LimpaCampos;

    crud := EmptyStr;
  end
  else
  begin
    if (RG_Status.ItemIndex = 0) then
      status := 'A'
    else
      status := 'I';

    if (RG_TipoPessoa.ItemIndex = 0) then
    begin
      tipoPessoa := 'F';
    end
    else
    begin
      tipoPessoa := 'J';
    end;

    if (RG_Sexo.ItemIndex = 0) then
    begin
      genero := 'F';
    end
    else if (RG_Sexo.ItemIndex = 1) then
    begin
      genero := 'M';
    end;

    if CB_Cargo.Text = '' then
      cargo := '1'
    else
      cargo := FDQCargoid_cargo.AsString;

    sql := 'update Cliente set ' + //
      'nome_razaosocial = ' + QuotedStr(Edt_RazaoSocial.Text) + //
      ',tipopessoa = ' + QuotedStr(tipoPessoa) + //
      ',cpf_cnpj = ' + QuotedStr(Edt_CPFCNPJ.Text) + //
      ',rg_ie = ' + QuotedStr(Edt_RGIE.Text) + //
      ',telefone = ' + QuotedStr(Edt_Telefone.Text) + //
      ',celular = ' + QuotedStr(Edt_Celular.Text) + //
      ',endereco = ' + QuotedStr(Edt_Endereco.Text) + //
      ',numero = ' + QuotedStr(Edt_Numero.Text) + //
      ',bairro = ' + QuotedStr(Edt_Bairro.Text) + //
      ',complemento = ' + QuotedStr(Edt_Complemento.Text) + //
      ',cep = ' + QuotedStr(Edt_CEP.Text) + //
      ',id_cidade = ' + FDQCidadeEditid_cidade.AsString + //
      ',pais = ' + QuotedStr(Edt_Pais.Text) + //
      ',email = ' + QuotedStr(Edt_Email.Text) + //
      ',nomepai = ' + QuotedStr(Edt_NomePai.Text) + //
      ',nomemae = ' + QuotedStr(Edt_NomeMae.Text) + //
      ',genero = ' + QuotedStr(genero) + //
      ',estadocivil = ' + QuotedStr(IntToStr(CB_EstadoCivil.ItemIndex)) + //
      ',grauescolaridade = ' + QuotedStr(CB_Escolaridade.Text) + //
      ',localdetrabalho = ' + QuotedStr(Edt_LocalTrabalho.Text) + //
      ',id_cargo = ' + cargo + //
      ',renda = ' + Edt_Renda.Text + //
      ',contatotrabalho = ' + QuotedStr(Edt_ContatoTrabalho.Text) + //
      ',id_referencia = ' + FDQReferenciaid_referencia.AsString + //
      ',datanascimento = ' + QuotedStr(FormatDateTime('yyyy-mm-dd',
      DTP_DataNascimento.Date)) + //
      ',status = ' + QuotedStr(status) + //
      ',observacao = ' + QuotedStr(Mm_Obs.Text) + //
      ',autorizacoes = ' + QuotedStr(Edt_Autorizacoes.Text) + //
      ',valormaxcred = ' + Edt_ValorMaxCred.Text + //
      ',naturalidade = ' + QuotedStr(Edt_Naturalidade.Text) + //
      ',nacionalidade = ' + QuotedStr(Edt_Nacionalidade.Text) + //
      'where id_Cliente = ' + Edt_IDCliente.Text + ';';
    DM.FD_Conexao.ExecSQL(sql);
    DM.FD_Conexao.CommitRetaining;

    DesativaCampos;
    LimpaCampos;

    crud := EmptyStr;
  end;
end;

procedure TF_Cliente.CB_CargoEnter(Sender: TObject);
begin
  inherited;
  CB_Cargo.Text := EmptyStr;
  FDQCargo.Close;
  FDQCargo.ParamByName('id_cargo').AsString := '%';
  FDQCargo.Open();
end;

procedure TF_Cliente.CB_CidadeEnter(Sender: TObject);
begin
  inherited;
  CB_Cidade.Text := EmptyStr;
  FDQCidade.Close;
  FDQCidade.Open();
end;

procedure TF_Cliente.CB_EscolaridadeEnter(Sender: TObject);
begin
  inherited;
  CB_Escolaridade.Text := EmptyStr;
end;

procedure TF_Cliente.CB_EstadoCivilEnter(Sender: TObject);
begin
  inherited;
  CB_EstadoCivil.Text := EmptyStr;
end;

procedure TF_Cliente.CB_ReferenciaEnter(Sender: TObject);
begin
  inherited;
  FDQReferencia.Close;
  FDQReferencia.ParamByName('id_referencia').AsString := '%';
  FDQReferencia.Open();
end;

procedure TF_Cliente.CB_ReferenciaJEnter(Sender: TObject);
begin
  inherited;
  FDQReferencia.Close;
  FDQReferencia.ParamByName('id_referencia').AsString := '%';
  FDQReferencia.Open();
end;

procedure TF_Cliente.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  Consultar.TabIndex := 1;

  btn_novo.Enabled := False;
  btn_editar.Enabled := true;
  btn_salvar.Enabled := False;
  btn_cancelar.Enabled := true;

  if (FDQ_Cstatus.AsString = 'A') then
    RG_Status.ItemIndex := 0
  else
    RG_Status.ItemIndex := 1;

  FDQCidadeEdit.Close;
  FDQCidadeEdit.ParamByName('id_cidade').AsString := FDQ_Cid_cidade.AsString;
  FDQCidadeEdit.Open();

  FDQReferencia.Close;
  FDQReferencia.ParamByName('id_referencia').AsString :=
    FDQ_Cid_referencia.AsString;
  FDQReferencia.Open();

  if FDQ_Ctipopessoa.AsString = 'J' then
  begin
    RG_TipoPessoa.ItemIndex := 1;
  end
  else
  begin
    RG_TipoPessoa.ItemIndex := 0;
  end;

  if (FDQ_Cgenero.AsString = 'F') then
  begin
    RG_Sexo.ItemIndex := 0;
  end
  else if (FDQ_Cgenero.AsString = 'M') then
  begin
    RG_Sexo.ItemIndex := 1;
  end;

  FDQCargo.Close;
  FDQCargo.ParamByName('id_cargo').AsString := FDQ_Cid_cargo.AsString;
  FDQCargo.Open();

  CB_Cargo.Text := FDQCargonome_cargo.AsString;
  CB_Referencia.Text := FDQReferenciaempresaref.AsString;

  Edt_CPFCNPJ.Text := FDQ_Ccpf_cnpj.AsString;
  Edt_RGIE.Text := FDQ_Crg_ie.AsString;
  Edt_Autorizacoes.Text := FDQ_Cautorizacoes.AsString;
  Edt_ValorMaxCred.Text := FDQ_Cvalormaxcred.AsString;
  Edt_IDCliente.Text := FDQ_Cid_cliente.AsString;
  DTP_DataCadastro.Date := FDQ_Cdatadecadastro.AsDateTime;
  Edt_RazaoSocial.Text := FDQ_Cnome_razaosocial.AsString;
  Edt_Endereco.Text := FDQ_Cendereco.AsString;
  Edt_Numero.Text := FDQ_Cnumero.AsString;
  Edt_Complemento.Text := FDQ_Ccomplemento.AsString;
  Edt_Bairro.Text := FDQ_Cbairro.AsString;
  Edt_Email.Text := FDQ_Cemail.AsString;
  Edt_Telefone.Text := FDQ_Ctelefone.AsString;
  Edt_Celular.Text := FDQ_Ccelular.AsString;
  Edt_Pais.Text := FDQ_Cpais.AsString;
  Edt_CEP.Text := FDQ_Ccep.AsString;
  CB_Cidade.Text := FDQCidadeEditnome.AsString;
  Edt_UF.Text := FDQCidadeEdituf.AsString;
  Mm_Obs.Text := FDQ_Cobservacao.AsString;
  Edt_LocalTrabalho.Text := FDQ_Clocaldetrabalho.AsString;
  Edt_Renda.Text := FDQ_Crenda.AsString;
  DTP_DataNascimento.Date := FDQ_Cdatanascimento.AsDateTime;
  Edt_NomePai.Text := FDQ_Cnomepai.AsString;
  Edt_NomeMae.Text := FDQ_Cnomemae.AsString;
  Edt_ContatoTrabalho.Text := FDQ_Ccontatotrabalho.AsString;
  Edt_Nacionalidade.Text := FDQ_Cnacionalidade.AsString;
  Edt_Naturalidade.Text := FDQ_Cnaturalidade.AsString;
  CB_EstadoCivil.ItemIndex := FDQ_Cestadocivil.AsInteger;
  CB_Escolaridade.Text := FDQ_Cgrauescolaridade.AsString;

end;

procedure TF_Cliente.EdtPesquisarExit(Sender: TObject);
begin
  inherited;
  FDQ_C.Close;
  FDQ_C.ParamByName('NomeCliente').AsString := EdtPesquisar.Text + '%';
  FDQ_C.Open();
end;

procedure TF_Cliente.Edt_DataNascimentoEnter(Sender: TObject);
begin
  inherited;
  DTP_DataNascimento.Date := Date;
end;

procedure TF_Cliente.Edt_RendaEnter(Sender: TObject);
begin
  inherited;
  Edt_Renda.Text := EmptyStr;
end;

procedure TF_Cliente.Edt_ValorMaxCredEnter(Sender: TObject);
begin
  inherited;
  Edt_ValorMaxCred.Text := EmptyStr;
end;

procedure TF_Cliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  LimpaCampos;
  DesativaCampos;
end;

procedure TF_Cliente.FormShow(Sender: TObject);
begin
  inherited;
  Consultar.TabIndex := 0;
  btn_novo.Enabled := true;
  btn_editar.Enabled := False;
  btn_salvar.Enabled := False;
  btn_cancelar.Enabled := False;
  btn_sair.Enabled := true;

end;

procedure TF_Cliente.AtivaCampos;
begin
  TabSheet2.Enabled := true;
end;

procedure TF_Cliente.DesativaCampos;
begin
  TabSheet2.Enabled := False;
end;

procedure TF_Cliente.LimpaCampos;
begin
  Edt_IDCliente.Text := EmptyStr;
  Edt_RGIE.Text := EmptyStr;
  Edt_RazaoSocial.Text := EmptyStr;
  Edt_Endereco.Text := EmptyStr;
  Edt_Numero.Text := EmptyStr;
  Edt_Bairro.Text := EmptyStr;
  Edt_Complemento.Text := EmptyStr;
  Edt_Pais.Text := EmptyStr;
  Edt_Email.Text := EmptyStr;
  Edt_NomePai.Text := EmptyStr;
  Edt_NomeMae.Text := EmptyStr;
  Edt_LocalTrabalho.Text := EmptyStr;
  Edt_Renda.Text := '0';
  Edt_ContatoTrabalho.Text := EmptyStr;
  Edt_UF.Text := EmptyStr;
  Edt_Nacionalidade.Text := EmptyStr;
  Edt_Naturalidade.Text := EmptyStr;
  Edt_Autorizacoes.Text := EmptyStr;
  Edt_ValorMaxCred.Text := '0';
  Edt_Telefone.Text := EmptyStr;
  Edt_Celular.Text := EmptyStr;
  Edt_CPFCNPJ.Text := EmptyStr;
  Edt_CEP.Text := EmptyStr;
  DTP_DataCadastro.Date := Date;
  DTP_DataNascimento.Date := Date;
  CB_Cidade.Text := EmptyStr;
  CB_Escolaridade.Text := EmptyStr;
  CB_Cargo.Text := EmptyStr;
  CB_Referencia.Text := EmptyStr;  
  CB_EstadoCivil.ItemIndex := -1;
  RG_TipoPessoa.ItemIndex := 0;
  RG_Status.ItemIndex := 0;
  RG_Sexo.ItemIndex := -1;
end;

procedure TF_Cliente.OptionONE;
begin
  btn_novo.Enabled := False;
  btn_editar.Enabled := False;
  btn_salvar.Enabled := true;
  btn_cancelar.Enabled := true;
  btn_sair.Enabled := False;
end;

procedure TF_Cliente.RG_TipoPessoaClick(Sender: TObject);
begin
  inherited;
  if RG_TipoPessoa.ItemIndex = 0 then
    FDQClientecpf_cnpj.EditMask := '000.000.000-00;1;_'
  else
    FDQClientecpf_cnpj.EditMask := '00.000.000/0000-00;0;_';
end;

end.
