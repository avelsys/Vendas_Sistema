unit Vendas.Classes.Atributo;

interface

uses
  Vendas.Interfaces.BaseCadastro;

type
  TAcoesAtributes = class(TCustomAttribute)
  private
    FTipoAcao: TTipoAcao;
  public
    constructor Create(AAcao: TTipoAcao);
    property TipoAcao: TTipoAcao read FTipoAcao write FTipoAcao;
  end;

  TOperacaoAtributes = class(TCustomAttribute)
  private
    FTipoOperacao: TArrayAcao;
  public
    constructor Create(AOperacao: TArrayAcao);
    property TipoOperacao: TArrayAcao read FTipoOperacao write FTipoOperacao;
  end;

  TTituloFormAtributes = class(TCustomAttribute)
  private
    FCaptionForm: String;
    FGeraEdits: Boolean;
  public
    constructor Create(ACaptionForm: String; AGeraEdits: boolean = false);
    property CaptionForm: String read FCaptionForm write FCaptionForm;
    property GeraEdits: Boolean read FGeraEdits write FGeraEdits;
  end;

  TValidaCamposAtributes = class(TCustomAttribute)
  private
    FNomeCampo: String;
  public
    constructor Create(ANomeCampo: String);
    property NomeCampo: String read FNomeCampo write FNomeCampo;
  end;



implementation

{ TAcoesAtributes }

constructor TAcoesAtributes.Create(AAcao: TTipoAcao);
begin
  FTipoAcao := AAcao;
end;


{ TOperacaoAtributes }

constructor TOperacaoAtributes.Create(AOperacao: TArrayAcao);
begin
  FTipoOperacao := AOperacao;
end;

{ TTituloFormAtributes }

constructor TTituloFormAtributes.Create(ACaptionForm: String; AGeraEdits: boolean = false);
begin
  FCaptionForm := ACaptionForm;
  FGeraEdits:= AGeraEdits;
end;

{ TValidaCamposAtributes }

constructor TValidaCamposAtributes.Create(ANomeCampo: String);
begin
  FNomeCampo := ANomeCampo;
end;

end.
