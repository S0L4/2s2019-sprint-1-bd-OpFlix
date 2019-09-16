USE T_OpFlix

INSERT INTO Categorias VALUES ('Suspense'),('Drama'),('Anima��o'),('Musical')
INSERT INTO Categorias VALUES ('Terror'),('A��o'),('Com�dia'),('Document�rio'),('Fic��o Cient�fica')

INSERT INTO Plataformas VALUES ('Netflix'),('Cinema'),('Prime Video'),('Crackle')
INSERT INTO Plataformas VALUES ('VHS')

INSERT INTO Classificacoes VALUES ('L'),('10'),('12'),('14'),('16'),('18')

INSERT INTO TipoUsuario VALUES ('Administrador'),('Cliente')

INSERT INTO TipoLancamento VALUES ('Filme'),('S�rie')

INSERT INTO Usuarios (Nome, Email, Senha, IdTipoUsuario)
VALUES ('Erick','erik@email.com','123456',1)
	   ,('Cassiana','cassiana@email.com','123456',1)
	   ,('Helena','helena@email.com','123456',2)
	   ,('Roberto','rob@email.com','3110',2)

INSERT INTO Usuarios (Imagem)
VALUES ('https://luizlomba.com.br/posteip/midia/Usuario.png')
	   ,('https://conteudo.imguol.com.br/blogs/174/files/2018/05/iStock-648229868-1024x909.jpg')
       ,('https://conteudo.imguol.com.br/blogs/174/files/2018/05/iStock-648229868-1024x909.jpg')
	   ,('https://luizlomba.com.br/posteip/midia/Usuario.png')

UPDATE Usuarios SET IdTipoUsuario = 1 WHERE IdUsuario = 3

INSERT INTO Lancamentos (Titulo, Sinopse, DuracaoMin, DataLancamento, IdPlataforma, IdCategoria, IdClassificao, IdTipoLancamento)
VALUES ('O Rei Le�o','O Rei Le�o, da Disney, dirigido por Jon Favreau, retrata uma jornada pela savana africana,
onde nasce o futuro rei da Pedra do Reino, Simba. O pequeno le�o que idolatra seu pai, o rei Mufasa, � fiel ao seu destino de assumir o reinado. 
Mas nem todos no reino pensam da mesma maneira. Scar, irm�o de Mufasa e ex-herdeiro do trono, tem seus pr�prios planos.','118','2019-07-18T00:00:00',2,4,1,1)

,('La Casa de Papel 3� temporada','Oito habilidosos ladr�es se trancam na Casa da Moeda da Espanha com o ambicioso plano de realizar o maior roubo da 
hist�ria e levar com eles mais de 2 bilh�es de euros. Para isso, a gangue precisa lidar com as dezenas de pessoas que manteve como ref�m, 
al�m dos agentes da for�a de elite da pol�cia, que far�o de tudo para que a investida dos criminosos fracasse.','650','2019-07-19T00:00:00',1,1,5,2)

,('Deuses Americanos','Shadow Moon � um ex-vigarista que serve como seguran�a e companheiro de viagem para o Sr. Wednesday, um homem fraudulento que �,
na verdade, um dos velhos deuses, e est� na Terra em uma miss�o: reunir for�as para lutar contra as novas entidades.','620','2017-04-30T00:00:00',3,2,6,2)

,('Toy Story 4','Woody sempre teve certeza sobre o seu lugar no mundo e que sua prioridade � cuidar de sua crian�a, seja Andy ou Bonnie. 
Mas quando Bonnie adiciona um relutante novo brinquedo chamado Garfinho ao seu quarto, uma aventura na estrada ao lado de velhos e novos amigos mostrar� a 
Woody qu�o grande o mundo pode ser para um brinquedo.','100','2019-06-20T00:00:00',2,3,1,1)

DELETE FROM Lancamentos 
WHERE IdLancamento = 8

UPDATE Lancamentos SET Titulo = 'La Casa de Papel 3� Temporada' WHERE IdLancamento = 7

Update Lancamentos SET DataLancamento = '1994-07-08' WHERE IdLancamento = 6
Update Lancamentos SET IdPlataforma = 5 WHERE IdLancamento = 6

INSERT INTO Lancamentos (Titulo, Sinopse, DuracaoMin, DataLancamento, IdPlataforma, IdCategoria, IdClassificao, IdTipoLancamento)
VALUES ('Vingadores Ultimato','Ap�s Thanos eliminar metade das criaturas vivas, os Vingadores precisam lidar com a dor da perda de amigos e seus entes queridos. 
Com Tony Stark (Robert Downey Jr.) vagando perdido no espa�o sem �gua nem comida, Steve Rogers (Chris Evans) e Natasha Romanov (Scarlett Johansson) 
precisam liderar a resist�ncia contra o tit� louco.','180','2019-04-11T00:00:00',2,6,3,1)

,('+ Velozes e + Furiosos','O ex-policial Brian OConner se muda de Los Angeles para Miami para recome�ar sua vida. Ele acaba se envolvendo em rachas na sua nova cidade com seu amigo Tej e Suki. 
Suas aventuras terminam quando ele � preso e faz um acordo com agentes do FBI. Brian tem a miss�o muito perigosa de prender um poderoso chefe do cartel das drogas.','105','2003-06-13T00:00:00',2,6,4,1)

,('Era uma vez em... Hollywood','Los Angeles, 1969. Rick Dalton (Leonardo DiCaprio) � um ator de TV que, juntamente com seu dubl�, est� decidido a fazer o seu nome em Hollywood. 
Para tanto, ele conhece muitas pessoas influentes na ind�stria cinematogr�fica, o que os acaba levando aos assassinatos realizados por Charles Manson na �poca, 
entre eles o da atriz Sharon Tate (Margot Robbie), que na �poca estava gr�vida do diretor Roman Polanski (Rafal Zawierucha).','161','2003-08-15T00:00:00',2,2,5,1)

INSERT INTO Lancamentos (Titulo, Sinopse, DuracaoMin, DataLancamento, IdPlataforma, IdCategoria, IdClassificao, IdTipoLancamento)
VALUES ('Guardi�es da Gal�xia', 'O aventureiro do espa�o Peter Quill torna-se presa de ca�adores de recompensas depois que rouba a esfera de um vil�o trai�oeiro, Ronan. 
Para escapar do perigo, ele faz uma alian�a com um grupo de quatro extraterrestres. Quando Quill descobre que a esfera roubada possui um poder capaz de mudar os rumos do universo, 
ele e seu grupo dever�o proteger o objeto para salvar o futuro da gal�xia.', '125', '2014-07-31T00:00:00',2,6,3,1)

,('Guardi�es da Galaxia', 'O aventureiro do espa�o Peter Quill torna-se presa de ca�adores de recompensas depois que rouba a esfera de um vil�o trai�oeiro, Ronan. 
Para escapar do perigo, ele faz uma alian�a com um grupo de quatro extraterrestres. Quando Quill descobre que a esfera roubada possui um poder capaz de mudar os rumos do universo, 
ele e seu grupo dever�o proteger o objeto para salvar o futuro da gal�xia.', '125', '2014-07-31T00:00:00',1,6,3,1)

INSERT INTO Favoritos (IdUsuario, IdLancamento) 
VALUES	(1,6),(1,7),(2,18),(3,9),(4,11)

SELECT * FROM Categorias ORDER BY IdCategoria ASC
SELECT * FROM Plataformas ORDER BY IdPlataforma ASC
SELECT * FROM Classificacoes ORDER BY IdClassificacao ASC
SELECT * FROM TipoUsuario ORDER BY IdTipoUsuario ASC
SELECT * FROM TipoLancamento ORDER BY IdTipoLancamento ASC
SELECT * FROM Usuarios ORDER BY IdUsuario ASC
SELECT * FROM Lancamentos ORDER BY IdLancamento ASC
SELECT * FROM Favoritos