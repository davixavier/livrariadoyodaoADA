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

      elsif input = "3" then

            Put_Line(To_String(liv.consultarEstoque));

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
