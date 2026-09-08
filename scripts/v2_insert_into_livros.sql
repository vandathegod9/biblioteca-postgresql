INSERT INTO livros (titulo, isbn, ano_publicacao, quantidade, id_autor) VALUES
('Dom Casmurro', '978000000001', 1899, 5, 1),
('Memórias Póstumas de Brás Cubas', '978000000002', 1881, 3, 1),
('A Hora da Estrela', '978000000003', 1977, 4, 2),
('1984', '978000000004', 1949, 6, 3),
('Harry Potter e a Pedra Filosofal', '978000000005', 1997, 8, 4),
('Capitães da Areia', '978000000006', 1937, 4, 5)
ON CONFLICT DO NOTHING;
