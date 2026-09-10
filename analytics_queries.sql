-- ===================================================
-- 1. Basic Aggregations & Metrics
-- ===================================================

-- Find overall maximum GPA and Age
SELECT MAX(gpa) AS max_gpa FROM Students;
SELECT MAX(age) AS max_age FROM Students;

-- Maximum GPA by Major
SELECT MAX(gpa) AS max_gpa_cs FROM Students WHERE UPPER(major) = 'COMPUTER SCIENCE';
SELECT MAX(gpa) AS max_gpa_cyber FROM Students WHERE UPPER(major) = 'CYBERSECURITY';

-- Maximum GPA by City
SELECT MAX(gpa) AS max_gpa_riyadh FROM Students WHERE UPPER(city) = 'RIYADH';
SELECT MAX(gpa) AS max_gpa_jeddah FROM Students WHERE UPPER(city) = 'JEDDAH';

-- Conditional Aggregations
SELECT MAX(gpa) AS max_gpa_age_20_25 FROM Students WHERE age BETWEEN 20 AND 25;
SELECT MAX(gpa) AS max_gpa_cs_riyadh FROM Students WHERE UPPER(major) = 'COMPUTER SCIENCE' AND UPPER(city) = 'RIYADH';


-- ===================================================
-- 2. Categorical Analysis & Grouping (GROUP BY)
-- ===================================================

-- Maximum GPA and Age grouped by Major
SELECT major, MAX(gpa) AS max_gpa FROM Students GROUP BY major ORDER BY max_gpa DESC;
SELECT major, MAX(age) AS max_age FROM Students GROUP BY major;

-- Maximum GPA and Age grouped by City
SELECT city, MAX(gpa) AS max_gpa FROM Students GROUP BY city;
SELECT city, MAX(age) AS max_age FROM Students GROUP BY city;


-- ===================================================
-- 3. Advanced Subqueries & Top Performers
-- ===================================================

-- Full details of the top-performing student
SELECT * FROM Students 
WHERE gpa = (SELECT MAX(gpa) FROM Students);

-- Name, Major, and GPA of top performer
SELECT name, major, gpa FROM Students 
WHERE gpa = (SELECT MAX(gpa) FROM Students);

-- Identify the major housing the top performer
SELECT major FROM Students 
WHERE gpa = (SELECT MAX(gpa) FROM Students);
