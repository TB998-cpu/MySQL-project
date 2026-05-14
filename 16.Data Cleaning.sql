-- Data Cleaning

SELECT *
FROM layoffs;

-- 1. Remove Duplicates
-- 2. Standardize the Data
-- 3. Null Values or blank values
-- 4. Remove any columns 


CREATE TABLE layoff_staging
LIKE layoffs;

-- Create a copy of the table and work on that table for major modifications is the recommended method.

INSERT layoff_staging
SELECT *
FROM layoffs;

-- Find the Duplicates

WITH duplicate_cte AS
(
S

)
SELECT *
FROM duplicate_cte
WHERE row_num > 1;

-- Delete the duplicates (Copy to clipboard > Create Statement)

CREATE TABLE `layoff_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


SELECT *
FROM layoff_staging2;


INSERT INTO layoff_staging2
SELECT *, 
ROW_NUMBER() OVER(
PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, 'date',
stage,country, funds_raised_millions) AS row_num
FROM layoff_staging;

SELECT *
FROM layoff_staging2
WHERE row_num > 1;

DELETE
FROM layoff_staging2
WHERE row_num > 1;

-- Standardizing data

SELECT DISTINCT (TRIM(company))
FROM layoff_staging2;

UPDATE layoff_staging2
SET company = TRIM(company);


SELECT industry
FROM layoff_staging2
ORDER BY 1;

SELECT *
FROM layoff_staging2
WHERE industry LIKE 'Crypto%';

UPDATE layoff_staging2
SET industry = 'Crypto'
WHERE industry = 'Crypto$';


SELECT DISTINCT location
FROM layoff_staging2
ORDER BY 1;

SELECT DISTINCT country
FROM layoff_staging2
ORDER BY 1;

-- Another way to remove something

UPDATE layoff_staging2
SET country = TRIM(TRAILING '.'FROM country)
WHERE country LIKE 'United States%';

-- Date was stated as text column, let's change that

SELECT `date`
FROM layoff_staging2;

UPDATE layoff_staging2
SET `date` = STR_TO_DATE(`date`, '%m/%d/%Y');

ALTER TABLE layoff_staging2
MODIFY COLUMN `date` DATE;

-- Now lets remove the NULLs

SELECT *
FROM layoff_staging2
WHERE total_laid_off IS NULL AND percentage_laid_off IS NULL;

SELECT *
FROM layoff_staging2
WHERE industry IS NULL
OR industry = '';

SELECT *
FROM layoff_staging2
WHERE company = 'Airbnb';

SELECT t1.industry, t2.industry
FROM layoff_staging2 AS t1
JOIN layoff_staging2 AS t2
	ON t1.company = t2.company
WHERE (t1.industry IS NULL OR  t1.industry = '')
AND t2.industry IS NOT NULL;

UPDATE layoff_staging2
SET industry = NULL
WHERE industry = '';


UPDATE layoff_staging2 AS t1
JOIN layoff_staging2 AS t2
	ON t1.company = t2.company
SET t1.industry = t2.industry
WHERE t1.industry IS NULL 
AND t2.industry IS NOT NULL;

SELECT *
FROM layoff_staging2
WHERE total_laid_off IS NULL AND percentage_laid_off IS NULL;

DELETE
FROM layoff_staging2
WHERE total_laid_off IS NULL AND percentage_laid_off IS NULL;

