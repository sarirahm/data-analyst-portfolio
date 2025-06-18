# COVID-19 Global Analysis with SQL

This project is part of my data analyst portfolio, where I explore and analyze the global COVID-19 pandemic using SQL queries. All the analysis is performed using one main SQL file: **`covid19_global_analysis.sql`**.

The data is derived from two CSV sources:
- `CovidDeaths.csv`
- `CovidVaccinations.csv`

These files are assumed to have been imported into a SQL database named `portofolioproject`, with two tables: `CovidDeaths` and `CovidVaccinations`.

---

## 📌 SQL Analysis Overview

The SQL file includes multiple sections, each designed to uncover different insights:

### 🦠 Daily New Cases
- **Query Purpose:** Track the number of new COVID-19 cases reported daily by country.
- **Usage:** Identify outbreak spikes or waves over time.

### 🌍 Global Infection Rate
- **Query Purpose:** Calculate the infection rate per country as a percentage of its total population.
- **Usage:** Understand which countries had the highest spread relative to their population size.

### ⚰️ Global Mortality Rate
- **Query Purpose:** Determine the percentage of COVID-19 deaths among confirmed cases.
- **Notes:** A filter is applied to exclude countries with unrealistic rates due to very low case counts.
- **Usage:** Understand country-level severity and health response.

### 💉 Global Vaccination Progress
- **Query Purpose:** Show the highest number of people vaccinated in each country.
- **Usage:** Compare progress and scale of vaccination efforts globally.

### 📊 Vaccination vs Infection Trend
- **Query Purpose:** Compare daily new cases with vaccination numbers across countries and dates.
- **Usage:** Explore how global vaccination rollout may have affected infection trends over time.

---

## 💾 How to Use

1. Import the `CovidDeaths.csv` and `CovidVaccinations.csv` into your SQL database.
2. Run the `covid19_global_analysis.sql` file in your SQL environment (e.g., SSMS).
3. Review the output of each query to gain insights into global and country-level COVID-19 trends.

---

## ⚠️ Notes on Data Handling

- Queries use `CAST()` to ensure proper numeric calculations.
- `NULL` values are handled using `ISNULL()` and `NULLIF()` where relevant.
- Filters are applied in some queries to **exclude misleading outliers** (e.g. very small countries with high death rates like Vanuatu).

---

## 👩‍💻 Author

Created by [sarirahm](https://github.com/sarirahm)  
This project is part of my portfolio to demonstrate SQL skills in real-world public health data analysis.

---

## 📎 License

This project is for educational and portfolio purposes only. Data originally provided by [Our World in Data](https://ourworldindata.org/covid-deaths).

