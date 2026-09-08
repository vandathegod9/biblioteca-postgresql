CREATE OR REPLACE VIEW vw_livros_autores AS
SELECT
    l.id_livro,
    l.titulo,
    l.isbn,
    l.ano_publicacao,
    l.quantidade,
    a.id_autor,
    a.nome AS autor,
    a.nacionalidade
FROM livros l
INNER JOIN autores a
    ON a.id_autor = l.id_autor;
