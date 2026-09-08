INSERT INTO autores (nome, nacionalidade) VALUES
('Machado de Assis', 'Brasileira'),
('Clarice Lispector', 'Brasileira'),
('George Orwell', 'Britânica'),
('J. K. Rowling', 'Britânica'),
('Jorge Amado', 'Brasileira')
ON CONFLICT DO NOTHING;
