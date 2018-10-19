--1.Suskaičiuokite kiek knygų kiekvieno autoriaus yra duomenų bazėje (įtraukdami autorius, kurie neturi knygų, bei neįtraukdami šių autorių).

-- Įtraukiami ir autoriai neturintys knygų.
select count(books.authorId) turiKnygu, authors.authorId, authors.name
from books
right join authors
on authors.authorId = books.authorId
group by authors.authorId;

-- Knygų neturintys autoriai neįtraukiami.
select count(books.authorId) turiKnygu, authors.authorId, authors.name
from books
inner join authors
on authors.authorId = books.authorId
group by authors.authorId;

--2.Pašalinkite autorius, kurie neturi knygų.
delete authors from authors 
left join books
on authors.authorId = books.authorId
where bookId is null;