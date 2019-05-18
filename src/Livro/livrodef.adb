
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

   procedure setQuantidade(self : OUT Livro; value : Natural) is
   begin
      self.Quantidade := value;
   end setQuantidade;
   
   function getQuantidade(self : Livro) return Natural is
   begin
      return self.Quantidade;
   end getQuantidade;
   
   procedure setID(self : OUT Livro; value : Natural) is
   begin
      self.ID := value;
   end setID;
   
   function getID(self : Livro) return Natural is
   begin
      return self.ID;
   end getID;
   
   --Getters e setters dos tipos derivados
   procedure setCapaDura(self : out LivroDrama; value : Boolean) is
   begin
      self.CapaDura := value;
   end setCapaDura;
   
   function getCapaDura(self : LivroDrama) return Boolean is
   begin
      return self.CapaDura;
   end getCapaDura;
   
   procedure setCapaBrochura(self : out LivroComedia; value : Boolean) is
   begin
      self.CapaBrochura := value;
   end setCapaBrochura;
   
   function getCapaBrochura(self : LivroComedia) return Boolean is
   begin
      return self.CapaBrochura;
   end getCapaBrochura;
   
   procedure setIlustracoes(self : out LivroAventura; value : Arquivos) is
   begin
      self.Ilustracoes := value;
   end setIlustracoes;
   
   function getIlustracoes(self : LivroAventura) return Arquivos is
   begin
      return self.Ilustracoes;
   end getIlustracoes;

end LivroDef;
