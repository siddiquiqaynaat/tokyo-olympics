--count the number of athletes from each country:
select Country ,count(*) as TotalAthletes
from tbl_athletes
group by Country
order by TotalAthletes desc;

--calculate the total medals won by each country:
SELECT
TeamCountry,
sum(Gold) Total_Gold,
sum(Silver) Total_Silver,
sum(Bronze) Total_Bronze
from medals
group by TeamCountry
order by Total_gold desc;

--calculate the average number of entries by gender for each discipline:
select Discipline,
avg(Female) avg_Female,
avg(Male)   avg_Male
from entriesgender
where Discipline = 'Archery'
group by Discipline;

