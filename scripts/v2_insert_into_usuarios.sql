INSERT INTO usuarios (nome, email, telefone) VALUES
('Carlos Silva', 'carlos.silva@email.com', '69999990001'),
('Ana Souza', 'ana.souza@email.com', '69999990002'),
('Marcos Oliveira', 'marcos.oliveira@email.com', '69999990003'),
('Juliana Santos', 'juliana.santos@email.com', '69999990004'),
('Pedro Costa', 'pedro.costa@email.com', '69999990005')
ON CONFLICT DO NOTHING;
