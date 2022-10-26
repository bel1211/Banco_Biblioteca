create database Biblioteca;

use Biblioteca;

create table Livro(
	idLivro  int primary key,
    NomeLivro varchar(100),
    Genero varchar(100),
    QuantPagina int(3),
    CapaDura varchar(50)
);


create table Autor(
	idAutor int primary key, 
    NomeAutor varchar(100),
    PaisDeOrigem varchar(100),
    DataNasci date,
    Endereco varchar (100)
);

insert into Livro values (1, 'Harry Potter e a Pedra Filosofal', 'Fantasia', 368, 'Roller'); 
insert into Livro values (2, 'Harry Potter e o Prisioneiro de Azkaban', 'Fantasia', 598, 'Mole');
insert into Livro values (3, 'Harry Potter e a Ordem da Fênix', 'Fantasia', 798, 'Cartão');
insert into Livro values (4, 'Harry Potter e a Câmara Secreta', 'Fantasia', 328, 'Paraná');
insert into Livro values (5, 'Garota Exemplar', 'Suspense', 128, 'Roller');
insert into Livro values (6, 'Diálogos Impossíveis', 'Comédia', 208, 'Mole');
insert into Livro values (7, 'Harry Potter e o Prisioneiro de Azkaban', 'Fantasia', 368, 'Cartão ');
insert into Livro values (8, 'Arafat ', 'Suspense', 158, 'Paraná ');
insert into Livro values (9, 'Este não é mais um livro de dieta ', 'Auto-Ajuda', 988, 'Roller ');
insert into Livro values (10, 'Atenção Plena: Mindfulness ', 'Ficção Científica', 122, 'Mole ');
insert into Livro values (11, 'O Fisico ', 'Biografias', 322, 'Cartão');
insert into Livro values (12, 'A Musicista ', 'Musica', 50, 'Roller');
insert into Livro values (13, 'Arsene Lupin Contra Herlock Sholmes', 'Mistério', 188, 'Paraná');
insert into Livro values (14, 'Harry Potter e o Cálice de Fogo', 'Fantasia', 368, 'Roller');
insert into Livro values (15, 'Harry Potter e a Príncipe ', 'Fantasia', 300, 'Mole');
insert into Livro values (16, 'Harry Potter e as Relíquias da Morte', 'Fantasia', 368, 'Cartão');
insert into Livro values (17, 'Sherlock dos Holmes e o Signo dos Quatros', 'Aventura', 412, 'Paraná');








insert into Autor values (1, 'Conan Doyle', 'Inglaterra' , '1960-12-23', 'Baker Street, 221 ');
insert into Autor values (2 , 'Joana Rowling', 'Inglaterra' , '1971-08-16', 'Fairmont Avenue, 3229');
insert into Autor values (3 , 'J. K. Rowling', 'Inglaterra' , '1961-03-02', 'Fairmont Avenue, 5200');
insert into Autor values (4 , 'MAURICE LEBLANC', 'Inglaterra' , '1975-06-06', 'Rose Avenue, 2496 ');
insert into Autor values (5 , 'Gillian Flynn', 'Portugal ' , '2000-08-15', ' Baker Street, 221');
insert into Autor values (6 , 'Osório Matsunada', 'Espanha ' , '1971-08-15', ' Baker Street, 562');
insert into Autor values (7 , 'Clive Baker', 'Brasil ' , '2001-03-16', ' Bobcat Drive, 2710 ');
insert into Autor values (8 , 'Rodrigo Polesso', 'Brasil ' , '2002-01-17', 'Wetzel Lane, 3788 ');
insert into Autor values (9, 'Giordono Danta', 'Estados Unidos ' , '1975-06-04', 'Não Identificado');
insert into Autor values (10, 'Neil Gaiman', 'Inglaterra ' , '1956-10-23', 'Cut And Shoot, 77301');
insert into Autor values (11, 'Veríssimo', 'Brasil ' , '1999-06-16', 'Rocky Mount, 27801');
insert into Autor values (12, 'J. Katherine Rowling', 'Estados Unidos ' , '1996-04-27', 'Randall Drive, 2103  ');


select * from Autor;
select * from Livro;

describe Livro;
describe Autor;

alter table Livro  add column idAutor int;

alter table Livro add foreign key (idAutor) references Autor(idAutor);

select * from Livro;
select * from Autor;

update Livro set idAutor = '1' Where idLivro = '17';
update Livro set idAutor = '2' Where idLivro = '16';
update Livro set idAutor = '2' Where idLivro = '15';
update Livro set idAutor = '3' Where idLivro = '14';
update Livro set idAutor = '4' Where idLivro = '13';
update Livro set idAutor = '5' Where idLivro = '12';
update Livro set idAutor = '6' Where idLivro = '11';
update Livro set idAutor = '7' Where idLivro = '10';
update Livro set idAutor = '8' Where idLivro = '9';
update Livro set idAutor = '9' Where idLivro = '8';
update Livro set idAutor = '10' Where idLivro = '7';
update Livro set idAutor = '11' Where idLivro = '6';
update Livro set idAutor = '5' Where idLivro = '5';
update Livro set idAutor = '12' Where idLivro = '4';
update Livro set idAutor = '3' Where idLivro = '3';
update Livro set idAutor = '3' Where idLivro = '2';
update Livro set idAutor = '2' Where idLivro = '1';

select Livro.NomeLivro, Livro.idAutor, Autor.NomeAutor, Autor.PaisDeOrigem  from Livro join Autor
on Autor.idAutor = Livro.idAutor;


create table Editora(
	idEditora int primary key,
    NomeEditora varchar (100),
    TelefoneDaEditora varchar(11)
);

insert into Editora values (1, 'Rocco', '2025550171' );
insert into Editora values (2, 'Intriseca', '2025550187' );
insert into Editora values (3, 'Lero-lero', '2025550154' );
insert into Editora values (4, 'Editora Dark Side', '2025550185' );
insert into Editora values (5, 'Editora Gente', '2025550110' );
insert into Editora values (6, 'Instituto Tomie Ohtake', '2025550134' );
insert into Editora values (7, 'Instituto Cultural', '2025550154' );
insert into Editora values (8, 'Zahar', '2025550174' );

select * from Editora;

alter table Editora  add column idLivro int;

alter table Editora add foreign key (idLivro) references Livro(idLivro);
describe Editora;

update Editora set idLivro = '1' Where idEditora = '1';
update Editora set idLivro = '2' Where idEditora = '1';
update Editora set idLivro = '3' Where idEditora = '1';
update Editora set idLivro = '4' Where idEditora = '1';
update Editora set idLivro = '5' Where idEditora = '2';
update Editora set idLivro = '8' Where idEditora = '1';
update Editora set idLivro = '7' Where idEditora = '3';
update Editora set idLivro = '9' Where idEditora = '4';
update Editora set idLivro = '10' Where idEditora = '5';
update Editora set idLivro = '11' Where idEditora = '6';
update Editora set idLivro = '12' Where idEditora = '7';
update Editora set idLivro = '13' Where idEditora = '7';
update Editora set idLivro = '14' Where idEditora = '8';
update Editora set idLivro = '15' Where idEditora = '1';
update Editora set idLivro = '16' Where idEditora = '1';
update Editora set idLivro = '17' Where idEditora = '1';

select * from Editora ;

select Editora.idEditora, Editora.NomeEditora, Livro.idLivro, Livro.NomeLivro  from Editora join Livro
on Livro.idLivro = Editora.idLivro;


create table Avaliacao(
	idAvaliacao int primary key ,
    Avaliacao varchar(100)
);

insert into Avaliacao values (1, 'Gostei' );
insert into Avaliacao values (2, 'Muito bom ' );
insert into Avaliacao values (3, 'Não gostei' );
insert into Avaliacao values (4, 'Maravilhoso' );
insert into Avaliacao values (5, 'Fraco' );
insert into Avaliacao values (6, 'Perfeito' );

alter table Avaliacao add column idLivro int;

alter table Avaliacao add foreign key (idLivro) references Livro(idLivro);
describe Avaliacao;

update Avaliacao set idLivro = '1' Where idAvaliacao = '2';
update Avaliacao set idLivro = '2' Where idAvaliacao = '1';
update Avaliacao set idLivro = '3' Where idAvaliacao = '4';
update Avaliacao set idLivro = '4' Where idAvaliacao = '3';
update Avaliacao set idLivro = '5' Where idAvaliacao = '5';
update Avaliacao set idLivro = '6' Where idAvaliacao = '1';
update Avaliacao set idLivro = '7' Where idAvaliacao = '2';
update Avaliacao set idLivro = '8' Where idAvaliacao = '1';
update Avaliacao set idLivro = '9' Where idAvaliacao = '4';
update Avaliacao set idLivro = '10' Where idAvaliacao = '3';
update Avaliacao set idLivro = '11' Where idAvaliacao = '5';
update Avaliacao set idLivro = '12' Where idAvaliacao = '4';
update Avaliacao set idLivro = '13' Where idAvaliacao = '1';
update Avaliacao set idLivro = '14' Where idAvaliacao = '2';
update Avaliacao set idLivro = '15' Where idAvaliacao = '5';
update Avaliacao set idLivro = '16' Where idAvaliacao = '2';
update Avaliacao set idLivro = '17' Where idAvaliacao = '6';

select * from Avaliacao;

select Avaliacao.idAvaliacao, Avaliacao.Avaliacao, Livro.idLivro, Livro.NomeLivro  from Avaliacao join Livro
on Livro.idLivro = Avaliacao.idLivro;

create table MinhaEstante(
	idRegistro int primary key,
    comprei varchar(50),
    valor double
);


insert into MinhaEstante values (1, 'Sim', '17.16');
insert into MinhaEstante values (2, 'Sim', '20.90');
insert into MinhaEstante values (3, 'Sim', '18.79');
insert into MinhaEstante values (4, 'Não', '50.36');
insert into MinhaEstante values (5, 'Não', '15.21');
insert into MinhaEstante values (6, 'Não', '60.23');
insert into MinhaEstante values (7, 'Não', '10.00');
insert into MinhaEstante values (8, 'sim', '20.90');
insert into MinhaEstante values (9, 'sim', '26.90');
insert into MinhaEstante values (10, 'sim', '9.81');
insert into MinhaEstante values (11, 'não', '20.55');
insert into MinhaEstante values (12, 'não', '50.00');
insert into MinhaEstante values (13, 'sim', '20.00');
insert into MinhaEstante values (14, 'não', '24.90');
insert into MinhaEstante values (15, 'sim', '18.90');
insert into MinhaEstante values (16, 'sim', '15.40');
insert into MinhaEstante values (17, 'não', '13.90');


select * from MinhaEstante; 


alter table MinhaEstante add column idLivro int;

alter table MinhaEstante add foreign key (idLivro) references Livro(idLivro);
describe MinhaEstante;

update MinhaEstante set idLivro = '1' Where idRegistro = '2';
update MinhaEstante set idLivro = '2' Where idRegistro = '3';
update MinhaEstante set idLivro = '3' Where idRegistro = '4';
update MinhaEstante set idLivro = '4' Where idRegistro = '5';
update MinhaEstante set idLivro = '5' Where idRegistro = '6';
update MinhaEstante set idLivro = '6' Where idRegistro = '7';
update MinhaEstante set idLivro = '7' Where idRegistro = '8';
update MinhaEstante set idLivro = '8' Where idRegistro = '1';
update MinhaEstante set idLivro = '9' Where idRegistro = '10';
update MinhaEstante set idLivro = '10' Where idRegistro = '11';
update MinhaEstante set idLivro = '11' Where idRegistro = '12';
update MinhaEstante set idLivro = '12' Where idRegistro = '13';
update MinhaEstante set idLivro = '13' Where idRegistro = '14';
update MinhaEstante set idLivro = '14' Where idRegistro = '15';
update MinhaEstante set idLivro = '15' Where idRegistro = '16';
update MinhaEstante set idLivro = '16' Where idRegistro = '17';
update MinhaEstante set idLivro = '17' Where idRegistro = '9';

select * from MinhaEstante;


select MinhaEstante.idRegistro, MinhaEstante.Comprei, MinhaEstante.Valor, Livro.idLivro, Livro.NomeLivro  from MinhaEstante join Livro
on Livro.idLivro = MinhaEstante.idLivro;


