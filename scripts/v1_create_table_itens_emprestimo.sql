CREATE TABLE IF NOT EXISTS itens_emprestimo (
    id_item SERIAL PRIMARY KEY,
    id_emprestimo INTEGER NOT NULL,
    id_livro INTEGER NOT NULL,
    quantidade INTEGER NOT NULL DEFAULT 1 CHECK (quantidade > 0),

    CONSTRAINT fk_itens_emprestimo
        FOREIGN KEY (id_emprestimo)
        REFERENCES emprestimos (id_emprestimo),

    CONSTRAINT fk_itens_livros
        FOREIGN KEY (id_livro)
        REFERENCES livros (id_livro),

    CONSTRAINT uk_emprestimo_livro
        UNIQUE (id_emprestimo, id_livro)
);
