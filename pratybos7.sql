--1. Sukuriam papildomą lentelę, kad galėtume įgyvendinti many-to-many sąryšį, išmetame nereikalingą stulpelį authorId iš Books lentelės

	--Skriptas pateiktas pratybos8.sql faile

--2. Pridedam duomenų į naujai sukurtą lentelę
insert into books_authors (`bookId`, `authorId`) values (1, 1), (2, 2), (3, 4), (4, 2), (5, 7), (6, 4), (7, 4), (8, 4), (9, 4), (10, 2), (6, 2), (6, 3), (1, 5), (1, 2), (7, 7);
	
	--4. Sutvarkome books lentele, kad galėtume įvesti LT raides
	ALTER TABLE books CONVERT TO CHARACTER SET utf8 COLLATE utf8_unicode_ci;
	
--Papildome books lentelę duomenimis kuriuose panaudoti LT simboliai
insert into books (title, year) values ('Altorių šešėly', 1933), ('Tolimas Balčios kraštas', 2016);


--3. Išrenkam visas knygas, jei knyga turi daugiau nei vieną autorių - autorius atskiriame kableliais.
select title, group_concat(authors.name) autoriausVardas from books
 inner join books_authors on books.bookId = books_authors.bookId
 inner join authors on authors.authorId = books_authors.authorId
 group by title;