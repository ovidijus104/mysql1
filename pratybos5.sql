--1.Išrinkite visus įrašus, tiek iš knygų tiek iš autorių lentelių, išrinkdami pasirinktinai du stulpelius.
--Neveikia dėl skirtingų charset reikšmių lentelėse, o gal ir užklausa turėtų būti ne tokia :D
select title from books
union
select name from authors