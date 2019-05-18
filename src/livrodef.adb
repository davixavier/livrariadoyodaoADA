
package body LivroDef is
      
   --Implementação dos setters e getters
   procedure setNome(self : OUT Livro; value : Unbounded_String) is
   begin
      self.Nome := value;
   end setNome;
   
   function getNome(self : Livro) return Unbounded_String is
   begin
      return self.Nome;
   end getNome;
   
   procedure setValor(self : OUT Livro; value : Float) is
   begin
      self.Valor := value;
   end setValor;
   
   function getValor(self : Livro) return Float is
   begin
      return self.Valor;
   end getValor;

   procedure setQuantidade(self : OUT Livro; value : Integer) is
   begin
      self.Quantidade := value;
   end setQuantidade;
   
   function getQuantidade(self : Livro) return Integer is
   begin
      return self.Quantidade;
   end getQuantidade;
   
   procedure setID(self : OUT Livro; value : Integer) is
   begin
      self.ID := value;
   end setID;
   
   function getID(self : Livro) return Integer is
   begin
      return self.ID;
   end getID;

end LivroDef;
