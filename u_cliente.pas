unit u_cliente;

interface

type
  TCliente = class
    private
      FCodigo        : integer;
      FNome          : string;
      FCPF           : string;
      FRG            : string;
      FCNPJ          : string;
      FTipoPessoa    :  integer;
      FEndereco      : string;
      FNumero        : string;
      FCEP           : string;
      FCidade        : string;
      FUF            : string;
      FLimiteCredito : Double;
      FDtHrCadastro  : string;
      FDataNascimento: TDate;
      FRazaoSocial   : string;
      FNomeFantasia  : string;
    public
      property Codigo          : integer read FCodigo         write FCodigo ;
      property Nome            : string read  FNome           write FNome          ;
      property CPF             : string read  FCPF            write FCPF           ;
      property RG              : string read  FRG             write FRG            ;
      property CNPJ            : string read  FCNPJ           write FCNPJ          ;
      property TipoPessoa      : integer read FTipoPessoa     write FTipoPessoa    ;
      property Endereco        : string read  FEndereco       write FEndereco      ;
      property Numero          : string read  FNumero         write FNumero        ;
      property CEP             : string read  FCEP            write FCEP           ;
      property Cidade          : string read  FCidade         write FCidade        ;
      property UF              : string read  FUF             write FUF            ;
      property LimiteCredito   : Double read  FLimiteCredito  write FLimiteCredito ;
      property DtHrCadastro    : string read  FDtHrCadastro   write FDtHrCadastro  ;
      property DataNascimento  : TDate read   FDataNascimento write FDataNascimento;
      property RazaoSocial     : string read  FRazaoSocial    write FRazaoSocial;
      property NomeFantasia    : string read  FNomeFantasia   write FNomeFantasia;
  end;


implementation

end.
