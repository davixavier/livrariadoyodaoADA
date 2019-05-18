with ada.Strings.Unbounded; use ada.Strings.Unbounded;

package LivroDef is

   --Definição do tipo privado
   type Livro is tagged private;
   
   --Array de strings equivalentes ao conteúdo dos arquivos de ilustrações
   type Arquivos is array (Natural) of Unbounded_String;
   
   --Definição dos protótipos dos setters e getters
   procedure setNome(self : out Livro; value : Unbounded_String);
   function getNome(self : Livro) return Unbounded_String;
   
   procedure setValor(self : out Livro; value : Float);
   function getValor(self : Livro) return Float;
   
   procedure setQuantidade(self : out Livro; value : Integer);
   function getQuantidade(self : Livro) return Integer;
   
   procedure setID(self : out Livro; value : Integer);
   function getID(self : Livro) return Integer;
   
   --Tipos derivados
   type LivroDrama is new Livro with private;
   --Getters e setters da classe derivada
   procedure setCapaDura(self : out LivroDrama; value : Boolean);
   function getCapaDura(self : LivroDrama) return Boolean;
   
   type LivroComedia is new Livro with private;
   --Getters e setters da classe derivada
   procedure setCapaBrochura(self : out LivroComedia; value : Boolean);
   function getCapaBrochura(self : LivroComedia) return Boolean;
   
   type LivroAventura is new Livro with private;
   --Getters e setters da classe derivada
   procedure setIlustracoes(self : out LivroAventura; value : Arquivos);
   function getIlustracoes(self : LivroAventura) return Arquivos;
   
private
   --Definição das variáveis dentro do tipo
   type Livro is tagged record
         Nome : Unbounded_String;
         Valor : Float;
         Quantidade : Integer;
         ID : Integer;
   end record;
   
   --Definição dos tipos derivados
   type LivroDrama is new Livro with record
      CapaDura : Boolean;
   end record;
   
   type LivroComedia is new Livro with record
      CapaBrochura : Boolean;
   end record;
   
   type LivroAventura is new Livro with record
      Ilustracoes : Arquivos;
   end record;

end LivroDef;
