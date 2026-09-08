INSERT INTO usuarios (nome, email, telefone)
VALUES ('Usuario Teste', 'usuario.teste@email.com', '69999999999')
ON CONFLICT DO NOTHING;

DELETE FROM usuarios
WHERE email = 'usuario.teste@email.com';
