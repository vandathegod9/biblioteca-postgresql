CREATE OR REPLACE PROCEDURE registrar_devolucao(
    p_id_emprestimo INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE emprestimos
    SET
        data_devolucao = CURRENT_DATE,
        status = 'DEVOLVIDO'
    WHERE id_emprestimo = p_id_emprestimo;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'Empréstimo % não encontrado.', p_id_emprestimo;
    END IF;
END;
$$;

-- Exemplo de execução:
-- CALL registrar_devolucao(1);
