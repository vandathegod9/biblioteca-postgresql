CREATE TABLE IF NOT EXISTS livros (
    id_livro SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    isbn VARCHAR(20) NOT NULL UNIQUE,
    ano_publicacao INTEGER NOT NULL CHECK (ano_publicacao > 0),
    quantidade INTEGER NOT NULL DEFAULT 1 CHECK (quantidade >= 0),
    id_autor INTEGER NOT NULL,

    CONSTRAINT fk_livros_autores
        FOREIGN KEY (id_autor)
        REFERENCES autores (id_autor)
);
