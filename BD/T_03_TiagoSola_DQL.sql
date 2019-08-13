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
