CREATE OR REPLACE VIEW vw_emprestimos AS
SELECT
    e.id_emprestimo,
    u.id_usuario,
    u.nome AS usuario,
    u.email,
    e.data_emprestimo,
    e.data_devolucao,
    e.status
FROM emprestimos e
INNER JOIN usuarios u
    ON u.id_usuario = e.id_usuario;
