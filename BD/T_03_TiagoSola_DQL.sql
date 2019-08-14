USE T_OpFlix

SELECT * FROM Categorias ORDER BY IdCategoria ASC
SELECT * FROM Plataformas ORDER BY IdPlataforma ASC
SELECT * FROM Classificacoes ORDER BY IdClassificacao ASC
SELECT * FROM TipoUsuario ORDER BY IdTipoUsuario ASC
SELECT * FROM TipoLancamento ORDER BY IdTipoLancamento ASC
SELECT * FROM Usuarios ORDER BY IdUsuario ASC
SELECT * FROM Lancamentos ORDER BY IdLancamento ASC

SELECT L.Titulo,C.Nome
FROM Lancamentos L
JOIN Categorias C
ON L.IdClassificao = C.IdCategoria

SELECT C.Nome,L.Titulo
FROM Categorias C
LEFT JOIN Lancamentos L
ON C.IdCategoria = L.IdCategoria

SELECT L.Titulo,P.Nome
FROM Lancamentos L
RIGHT JOIN Plataformas P
ON L.IdPlataforma = P.IdPlataforma

CREATE PROCEDURE BuscarFilmePorCategoria @Categoria VARCHAR(255)
AS
SELECT IdLancamento, Titulo, IdCategoria
FROM Lancamentos WHERE IdCategoria = @Categoria;

CREATE PROCEDURE BuscarFilmePorCategoriaNome @Categoria VARCHAR(255)
AS
SELECT IdLancamento, Titulo, Categorias.Nome
FROM Lancamentos JOIN Categorias ON Categorias.IdCategoria = Lancamentos.IdCategoria WHERE Categorias.Nome= @Categoria;

EXEC BuscarFilmePorCategoria 6;
EXEC BuscarFilmePorCategoriaNome 'A��o';

CREATE PROCEDURE BuscarFilmePorId @IdTipoLancamento INT  
AS 
SELECT IdLancamento, Titulo, Sinopse, DataLancamento, IdPlataforma, IdCategoria, IdClassificao, DuracaoMin 
FROM Lancamentos WHERE IdTipoLancamento = @IdTipoLancamento;

EXEC BuscarFilmePorId 1

CREATE VIEW vwPlataformas AS
SELECT IdPlataforma, Titulo, IdCategoria FROM Lancamentos 

SELECT * FROM vwPlataformas WHERE IdPlataforma = 2