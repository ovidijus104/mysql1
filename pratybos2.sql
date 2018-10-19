--1.Papildykite autorių lentelę 2 įrašais;
insert into authors (name) values ('Binkis'), ('Aputis');

--2.Papildykite knygų lentelę, 2 įrašais apie knygas, kurių autorius įrašėte prieš tai.
insert into books (authorId, title, year) values (8, 'Altoriu sesely', 1933), (9, 'Tolimas Balcios krastas', 2016);

--3.Pakeiskite vienos knygos autorių į kitą.
update books set authorId = 2 where authorId = 6; 