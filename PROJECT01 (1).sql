create database project01;
use project01;
select * from books;

-- After scraping and saving the data, load it into a SQL database and answer the following questions:

-- 1. **Find the number of books available in stock.**
select
	count(title) as no_books
from books;


-- 2. **List the top 5 most expensive books.**
select
	max(right(price,6)) as expensive_books
from books
group by title
order by expensive_books desc
limit 5;

-- 3. **Find the average rating of books.**
select
	round(avg(rating),2)as avg_rating
from books;

-- 4. **Retrieve the total number of books for each rating (e.g., 1-star, 2-star, etc.).**
select
	concat(rating,' - ','Star') as rating,
	count(rating) as count_rating
from books
group by rating
order by rating;

-- **Example Insights (For Reference)**

--  There are **X** books available in stock.
select
	title,
    availability
from books
where availability='In stock';


--  The most expensive book is **"XYZ"**, priced at **£59.99**.

select
	title,
    price 
from books
where price='Â£59.99';

--  The average rating of books is **4.2 stars**.
select
	title,
    avg(rating) as avg_rating
from books
having avg(rating) = '4.2';

--  There are **Y** books with a **5-star** rating
select
	title,
    rating
from books
where rating = '5'
order by title;






