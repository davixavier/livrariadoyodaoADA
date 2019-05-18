with LivroDef; use LivroDef;
with LivrariaDef; use LivrariaDef;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   liv : Livraria;
   livo : Livro;
begin
   livo.setNome(To_Unbounded_String("AAA"));
   livo.setValor(12.2);
   livo.setQuantidade(1);

   liv.adicionarLivro(livo);
   liv.adicionarLivro(livo);

   Put_Line(To_String(liv.consultarEstoque));
end Main;
