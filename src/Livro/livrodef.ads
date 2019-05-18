with ada.Strings.Unbounded; use ada.Strings.Unbounded;

package LivroDef is

   --Defini��o do tipo privado
   type Livro is tagged private;
   
   --Array de strings equivalentes ao conte�do dos arquivos de ilustra��es
   type Arquivos is array (Natural) of Unbounded_String;
   
   --Defini��o dos prot�tipos dos setters e getters
   procedure setNome(self : out Livro; value : Unbounded_String);
   function getNome(self : Livro) return Unbounded_String;
   
   procedure setValor(self : out Livro; value : Float);
   function getValor(self : Livro) return Float;
   
   procedure setQuantidade(self : out Livro; value : Natural);
   function getQuantidade(self : Livro) return Natural;
   
   procedure setID(self : out Livro; value : Natural);
   function getID(self : Livro) return Natural;
   
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
   --Defini��o das vari�veis dentro do tipo
   type Livro is tagged record
         Nome : Unbounded_String := To_Unbounded_String("");
         Valor : Float := 0.0;
         Quantidade : Natural := 0;
         ID : Natural := 0;
   end record;
   
   --Defini��o dos tipos derivados
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
