with LivroDef; use LivroDef;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package LivrariaDef is
   
   --Tipo Livraria
   type Livraria is tagged private;
   --Ponteiro para livro
   type LivroPtr is access all Livro;
   --Array de livros
   type LivroArray is array (0..9999) of LivroPtr;
   
   --Subprogramas da livraria
   procedure adicionarLivro(self : out Livraria; value : Livro);
   function venderLivro(self : out Livraria; id : Natural) return Boolean;
   function consultarEstoque(self : Livraria) return Unbounded_String;
   function buscarLivro(self : Livraria; id : Natural) return LivroPtr;
   function getSize(self : Livraria) return Natural;
   
private
   
   --Definição dos atributos da livraria
   type Livraria is tagged 
      record
         --Array de livros
         Livros : LivroArray := (others => null);
         Size : Natural := 0;
      end record;
      

end LivrariaDef;
