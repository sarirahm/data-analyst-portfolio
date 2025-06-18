-- Daily New Cases
-- Trend of new COVID-19 cases over time

SELECT 
    location,
	date, 
    new_cases
FROM 
    portofolioproject..CovidDeaths
WHERE
  continent IS NOT NULL
ORDER BY 
	location,
    date;


-- Global COVID-19 Infection Rate
-- Calculating infection rate per country as a percentage of total population

SELECT
	Location,
	population,
	MAX(CAST(total_cases AS FLOAT)) AS total_cases,
	(MAX(CAST(total_cases AS FLOAT)) / CAST(population AS FLOAT)) * 100 AS infection_rate
FROM
	portofolioproject..CovidDeaths
WHERE
  continent IS NOT NULL
GROUP BY
	location, population
ORDER BY
	infection_rate DESC;


-- Global COVID-19 Mortality Rate
-- Percentage of deaths among total confirmed cases per country

SELECT
	location,
	MAX(CAST(total_deaths AS FLOAT)) AS total_deaths,
	MAX(CAST(total_cases AS FLOAT)) AS total_cases,
	(MAX(CAST(total_deaths AS FLOAT)) / MAX(CAST(total_cases AS FLOAT))) * 100 AS death_rate
FROM
	portofolioproject..CovidDeaths
WHERE
  continent IS NOT NULL
GROUP BY
	location
HAVING NOT
	(MAX(CAST(total_deaths AS FLOAT)) / NULLIF(MAX(CAST(total_cases AS FLOAT)), 0)) * 100 >20
ORDER BY
	death_rate DESC;


--  Global Vaccination Progress
-- Highest number of people vaccinated per country

SELECT
  location,
  MAX(ISNULL(people_vaccinated, 0)) AS max_vaccinated
FROM
  portofolioproject..CovidVaccinations
WHERE
  continent IS NOT NULL
GROUP BY
  location
ORDER BY
  max_vaccinated DESC;


-- Vaccination vs Infection Trend in Indonesia
-- Comparing vaccination and infection trends in Indonesia

SELECT 
	A.location,
    A.date, 
    A.new_cases, 
    B.new_vaccinations
FROM 
    portofolioproject..CovidDeaths A
JOIN 
    portofolioproject..CovidVaccinations B
ON 
    A.location = B.location AND A.date = B.date
WHERE
	A.continent IS NOT NULL
ORDER BY 
	A.location,
    A.date;
