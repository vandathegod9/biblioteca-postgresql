CREATE TABLE IF NOT EXISTS emprestimos (
    id_emprestimo SERIAL PRIMARY KEY,
    id_usuario INTEGER NOT NULL,
    data_emprestimo DATE NOT NULL DEFAULT CURRENT_DATE,
    data_devolucao DATE,
    status VARCHAR(20) NOT NULL DEFAULT 'ABERTO',

    CONSTRAINT fk_emprestimos_usuarios
        FOREIGN KEY (id_usuario)
        REFERENCES usuarios (id_usuario),

    CONSTRAINT chk_status_emprestimo
        CHECK (status IN ('ABERTO', 'DEVOLVIDO', 'ATRASADO'))
);
