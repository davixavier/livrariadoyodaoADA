
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

   function venderLivro(self : out Livraria; id : Natural) return Boolean is
   begin
      if self.Size = 0 then
         return False;
      end if;

      for i in 0..self.Livros'Length-1 loop

         if self.Livros(i) /= null then

            if self.Livros(i).getID = id then
            if self.Livros(i).getQuantidade = 1 then
               self.Livros(i) := null;
               self.Size := self.Size - 1;
            else
               self.Livros(i).setQuantidade(self.Livros(i).getQuantidade - 1);
            end if;

            return True;
            end if;

         end if;
      end loop;

      return False;
   end venderLivro;

   --Retorna uma string com todas as informações to estoque
   function consultarEstoque(self : Livraria) return Unbounded_String is
      str : Unbounded_String;
      CR : Character := Character'Val(13);
      LF : Character := Character'Val(10);
      NL : constant String := CR & LF;

      convert : Integer;
   begin
      str := "##>> Quantidade de livros em estoque: " & To_Unbounded_String(Natural'Image(self.Size));
      str := str & NL & NL;

      if self.Size = 0 then
         return str;
      end if;

      for i in 0..self.Livros'Length-1 loop
         if self.Livros(i) /= null then
            str := str & "##>> Livro " & To_Unbounded_String(Natural'Image(self.Livros(i).getID)) & NL;
            str := str & "      -Nome: " & self.Livros(i).getNome & NL;

            convert := Integer(self.Livros(i).getValor);
            str := str & "      -Valor: " & To_Unbounded_String(Integer'Image(convert));

            convert := Integer((self.Livros(i).getValor - Float(convert)) * 100.0);
            str := str & " ." & To_Unbounded_String(Integer'Image(convert)) & NL;

            str := str & "      -Quantidade em estoque: " & To_Unbounded_String(Natural'Image(self.Livros(i).getQuantidade)) & NL;
         end if;

      end loop;

      return str;
   end consultarEstoque;

   function buscarLivro(self : Livraria; id : Natural) return LivroPtr is
   begin
      for i in 0..self.Livros'Length-1 loop

         if self.Livros(i) /= null then

            if self.Livros(i).getID = id then

               return self.Livros(i);

            end if;

         end if;

      end loop;

      return null;
   end buscarLivro;

   function getSize(self : Livraria) return Natural is
   begin
      return self.Size;
   end getSize;

end LivrariaDef;
