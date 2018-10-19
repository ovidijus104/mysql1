--1.Paruoškite duomenų bazės atnaujinimo skriptą. (tik struktūros).
drop table if exists books_authors;
create table books_authors (bookId int, authorId int);
alter table books drop column authorId;