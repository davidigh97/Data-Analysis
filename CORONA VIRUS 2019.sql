SELECT * 
FROM `sql covid portfolio`.`covid deaths`;  
SELECT location, date, total_cases, new_cases, total_deaths, population
FROM `sql covid portfolio`. `covid deaths`;
SELECT location, date, total_cases, total_deaths, (total_cases/total_deaths) as Deathpercentage 
FROM `sql covid portfolio`. `covid deaths`ORDER BY 1,2;
SELECT location, date, total_cases, population, (total_cases/population)*100 as Deathpercentage 
FROM`sql covid portfolio`.`covid deaths`
WHERE location LIKE '%states%'
ORDER BY 1,2 
SELECT location, population, MAX(total_cases)as Highestinfectioncount, MAX((total_cases/population))*100 as populationinfected
FROM`sql covid portfolio`.`covid deaths`WHERE location like '%states' 
group by population,location
order by 1,2;
SELECT location, MAX(total_deaths)as totaldeathcount
FROM `sql covid portfolio`.`covid deaths`
WHERE location like '%states% '
group by location
order by totaldeathcount desc;
SELECT continent, MAX(total_deaths) as totaldeathcount
FROM `sql covid portfolio`.`covid deaths`
WHERE continent is not null
group by continent
order by totaldeathcount desc;