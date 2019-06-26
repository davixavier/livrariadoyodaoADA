with LivroDef; use LivroDef;
with LivrariaDef; use LivrariaDef;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   --Caracteres de quebra de linha
   CR : constant Character := Character'Val(13);
   LF : constant Character := Character'Val(10);
   NL : constant String := CR & LF;

   --Variaveis auxiliares
   liv : Livraria;

   temp : Unbounded_String;

   enter : Character;

   tempLivro : Livro;

   convert : Integer;
begin

   --Loop de interação
   loop
      --Cabeçalho
      temp := temp & "#########################################################################" & NL;
      temp := temp & "###################   LIVRARIA   ########################################" & NL;
      temp := temp & "#########################################################################" & NL;
      temp := temp & "#########################################################################" & NL;
      temp := temp & "##> >Escolha uma operacao: ##############################################" & NL;
      temp := temp & "##>> 1 - Adicionar livros a livraria ####################################" & NL;
      temp := temp & "##>> 2 - Vender um livro da livraria ####################################" & NL;
      temp := temp & "##>> 3 - Consultar o estoque atual ######################################" & NL;
      temp := temp & "##>> 4 - Ver as informacoes de um livro #################################" & NL;
      temp := temp & "#########################################################################" & NL;
      temp := temp & "##>> ";

      Put(To_String(temp));

      --Entrada do usuário
      temp := To_Unbounded_String(Get_Line);
      if temp = "1" then

         temp := To_Unbounded_String("");
         temp := temp & "##>> Insira um nome para o novo livro: " & NL;
         temp := temp & "##>> ";

         Put(To_String(temp));
         temp := To_Unbounded_String(Get_Line);

         tempLivro.setNome(temp);

         temp := To_Unbounded_String("");
         temp := temp & "##>> Insira o preco do novo livro: " & NL;
         temp := temp & "##>> ";

         Put(To_String(temp));
         temp := To_Unbounded_String(Get_Line);

         tempLivro.setValor(Float'Value(To_String(temp)));

         temp := To_Unbounded_String("");
         temp := temp & "##>> Insira a quantidade disponivel desse exemplar: " & NL;
         temp := temp & "##>> ";

         Put(To_String(temp));
         temp := To_Unbounded_String(Get_Line);

         tempLivro.setQuantidade(Integer'Value(To_String(temp)));

         liv.adicionarLivro(tempLivro);

         Put_Line("##>> Livro adicionado com sucesso!" & NL & NL);

      elsif temp = "2" then

         Put_Line("##>> Insira o ID do livro desejado: ");

         temp := To_Unbounded_String(Get_Line);


         if liv.venderLivro(Integer'Value(To_String(temp))) = True then
            Put_Line("##>> Livro vendido com sucesso!");

         else

            Put_Line("##>> Livro nao encontrado");

         end if;

      elsif temp = "3" then

         Put_Line(To_String(liv.consultarEstoque));

      elsif temp = "4" then

         Put_Line("##>> Insira o ID do livro desejado: ");

         temp := To_Unbounded_String(Get_Line);

         declare
            tempLivroPtr : LivroPtr := liv.buscarLivro(Integer'Value(To_String(temp)));
         begin

            if tempLivroPtr /= null then

            temp := temp & "##>> Livro " & To_Unbounded_String(Natural'Image(tempLivroPtr.getID)) & NL;
            temp := temp & "      -Nome: " & tempLivroPtr.getNome & NL;

            convert := Integer(tempLivroPtr.getValor);
            temp := temp & "      -Valor: " & To_Unbounded_String(Integer'Image(convert));

            convert := Integer((tempLivroPtr.getValor - Float(convert)) * 100.0);
            temp := temp & " ." & To_Unbounded_String(Integer'Image(convert)) & NL;

            temp := temp & "      -Quantidade em estoque: " & To_Unbounded_String(Natural'Image(tempLivroPtr.getQuantidade)) & NL;

            Put_Line(To_String(temp));

         else

            Put_Line("##>> Livro nao encontrado!");

         end if;

         end;

      end if;

      Put_Line("##>> Pressione ENTER para continuar...");

      --Trava o programa até o usuário pressionar ENTER
      loop

         Ada.Text_IO.Get_Immediate(enter);

         exit when enter = CR;
      end loop;

      temp := To_Unbounded_String("");
      New_Line(50);

   end loop;
end Main;
