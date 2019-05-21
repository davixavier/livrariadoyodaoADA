with LivroDef; use LivroDef;
with LivrariaDef; use LivrariaDef;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   CR : constant Character := Character'Val(13);
   LF : constant Character := Character'Val(10);
   NL : constant String := CR & LF;

   liv : Livraria;

   input : Unbounded_String;

   enter : Character;

   tempLivro : Livro;

   convert : Integer;
begin

   loop

      input := input & "#########################################################################" & NL;
      input := input & "###################   LIVRARIA   ########################################" & NL;
      input := input & "#########################################################################" & NL;
      input := input & "#########################################################################" & NL;
      input := input & "##> >Escolha uma operacao: ##############################################" & NL;
      input := input & "##>> 1 - Adicionar livros a livraria ####################################" & NL;
      input := input & "##>> 2 - Vender um livro da livraria ####################################" & NL;
      input := input & "##>> 3 - Consultar o estoque atual ######################################" & NL;
      input := input & "##>> 4 - Ver as informacoes de um livro #################################" & NL;
      input := input & "#########################################################################" & NL;
      input := input & "##>> ";

      Put(To_String(input));

      input := To_Unbounded_String(Get_Line);
      if input = "1" then

         input := To_Unbounded_String("");
         input := input & "##>> Insira um nome para o novo livro: " & NL;
         input := input & "##>> ";

         Put(To_String(input));
         input := To_Unbounded_String(Get_Line);

         tempLivro.setNome(input);

         input := To_Unbounded_String("");
         input := input & "##>> Insira o preco do novo livro: " & NL;
         input := input & "##>> ";

         Put(To_String(input));
         input := To_Unbounded_String(Get_Line);

         tempLivro.setValor(Float'Value(To_String(input)));

         input := To_Unbounded_String("");
         input := input & "##>> Insira a quantidade disponivel desse exemplar: " & NL;
         input := input & "##>> ";

         Put(To_String(input));
         input := To_Unbounded_String(Get_Line);

         tempLivro.setQuantidade(Integer'Value(To_String(input)));

         liv.adicionarLivro(tempLivro);

         Put_Line("##>> Livro adicionado com sucesso!" & NL & NL);

      elsif input = "2" then

         Put_Line("##>> Insira o ID do livro desejado: ");

         input := To_Unbounded_String(Get_Line);


         if liv.venderLivro(Integer'Value(To_String(input))) = True then
            Put_Line("##>> Livro vendido com sucesso!");

         else

            Put_Line("##>> Livro nao encontrado");

         end if;

      elsif input = "3" then

         Put_Line(To_String(liv.consultarEstoque));

      elsif input = "4" then

         Put_Line("##>> Insira o ID do livro desejado: ");

         input := To_Unbounded_String(Get_Line);

         declare
            tempLivroPtr : LivroPtr := liv.buscarLivro(Integer'Value(To_String(input)));
         begin

            if tempLivroPtr /= null then

            input := input & "##>> Livro " & To_Unbounded_String(Natural'Image(tempLivroPtr.getID)) & NL;
            input := input & "      -Nome: " & tempLivroPtr.getNome & NL;

            convert := Integer(tempLivroPtr.getValor);
            input := input & "      -Valor: " & To_Unbounded_String(Integer'Image(convert));

            convert := Integer((tempLivroPtr.getValor - Float(convert)) * 100.0);
            input := input & " ." & To_Unbounded_String(Integer'Image(convert)) & NL;

            input := input & "      -Quantidade em estoque: " & To_Unbounded_String(Natural'Image(tempLivroPtr.getQuantidade)) & NL;

            Put_Line(To_String(input));

         else

            Put_Line("##>> Livro nao encontrado!");

         end if;

         end;

      end if;

      Put_Line("##>> Pressione ENTER para continuar...");

      loop

         Ada.Text_IO.Get_Immediate(enter);

         exit when enter = CR;
      end loop;

      input := To_Unbounded_String("");
      New_Line(50);

   end loop;
end Main;
