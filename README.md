# IDS706_Arushi_Wk6
Sql Manipulation

This assignment marks the beginning of our Data Storage and Management series.
The objective was to become comfortable working with databases, performing basic analysis, and carrying out CRUD (Create, Read, Update, Delete) operations using SQLite.
I used the provided University Rankings dataset, which contains global university rankings from 2012 to 2015.

# 1. Clone the Repository
git clone https://github.com/arushi40868/IDS706_Arushi_Wk6.git
cd IDS706_Arushi_Wk6

# 2. Open SQLite Database
sqlite3 university_rankings.db
import sqlite3
conn = sqlite3.connect("university_rankings.db")

# Basic Analysis Queries
-- View total number of records
SELECT COUNT(*) FROM university_rankings;

-- List available years
SELECT DISTINCT year FROM university_rankings;

-- Find average score by country for 2014
SELECT country, AVG(score) AS avg_score
FROM university_rankings
WHERE year = 2014
GROUP BY country
ORDER BY avg_score DESC;

# CRUD Operations
INSERT INTO university_rankings (institution, country, world_rank, score, year)
VALUES ('Duke Tech', 'USA', 350, 60.5, 2014);
---------
SELECT COUNT(*) AS top_200_japan
FROM university_rankings
WHERE country = 'Japan' AND year = 2013 AND world_rank <= 200;
---------
UPDATE university_rankings
SET score = score + 1.2
WHERE institution = 'University of Oxford' AND year = 2014;

# Deletion
DELETE FROM university_rankings
WHERE score < 45 AND year = 2015;

# Repo Structure
IDS706_Arushi_Wk6/
│
├── university_rankings.db        # SQLite database file
├── queries.sql                   # All CRUD and analysis queries
├── README.md                     # Documentation
└── screenshots/ (optional)       # Any screenshots of output verification



