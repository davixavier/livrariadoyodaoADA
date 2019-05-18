package body LivrariaDef is

   --Definição dos subprogramas da livraria
   procedure adicionarLivro(self : out Livraria; value : Livro) is
      livroacc : LivroPtr;
   begin
      livroacc := new Livro;
      livroacc.all := value;
      livroacc.all.setID(self.Size);
      self.Livros(self.Size) := livroacc;

      self.Size := self.Size + 1;
   end adicionarLivro;

   procedure venderLivro(self : out Livraria; id : Natural) is
   begin
      for i in 0..self.Size loop
         if self.Livros(i).getID = id then
            self.Livros(i) := null;
            self.Size := self.Size - 1;
            return;
         end if;
      end loop;
   end venderLivro;

   --Retorna uma string com todas as informações to estoque
   function consultarEstoque(self : Livraria) return Unbounded_String is
      str : Unbounded_String;
      CR : Character := Character'Val(13);
      LF : Character := Character'Val(10);
      NL : constant String := CR & LF;
   begin
      str := "Quantidade de livros em estoque: " & To_Unbounded_String(Natural'Image(self.Size));
      str := str & NL & NL;

      if self.Size = 0 then
         return str;
      end if;

      for i in 0..self.Livros'Length-1 loop
         if self.Livros(i) /= null then
            str := str & "Livro " & To_Unbounded_String(Natural'Image(self.Livros(i).getID)) & NL;
            str := str & "    Nome: " & self.Livros(i).getNome & NL;
            str := str & "    Valor: " & To_Unbounded_String(Float'Image(self.Livros(i).getValor)) & NL;
            str := str & "    Quantidade em estoque: " & To_Unbounded_String(Natural'Image(self.Livros(i).getQuantidade)) & NL;
         end if;

      end loop;

      return str;
   end consultarEstoque;

   function buscarLivro(self : Livraria; id : Natural) return LivroPtr is
   begin
      for i in 0..self.Size loop
         if self.Livros(i).getID = id then
            return self.Livros(i);
         end if;
      end loop;

      return null;
   end buscarLivro;

   function getSize(self : Livraria) return Natural is
   begin
      return self.Size;
   end getSize;

end LivrariaDef;
