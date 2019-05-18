with ada.Strings.Unbounded; use ada.Strings.Unbounded;

package LivroDef is

   --Defini��o do tipo privado
   type Livro is tagged private;
   
   --Defini��o dos prot�tipos dos setters e getters
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
   type LivroComedia is new Livro with private;
   
private
   --Defini��o das vari�veis dentro do tipo
   type Livro is tagged record
         Nome : Unbounded_String;
         Valor : Float;
         Quantidade : Integer;
         ID : Integer;
   end record;
   
   --Defini��o dos tipos derivados
   type LivroDrama is new Livro with record
      CapaDura : Boolean;
   end record;
   
   type LivroComedia is new Livro with record
      CapaBrochura : Boolean;
   end record;

end LivroDef;
