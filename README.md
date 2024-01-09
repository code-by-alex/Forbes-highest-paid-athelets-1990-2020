Forbes Richest Athletes 1990-2020

I downloaded Forbes Highest Paid Athletes 1990-2020 data from the Kaggle website.
  URL: https://www.kaggle.com/datasets/parulpandey/forbes-highest-paid-athletes-19902019/data

Here is a complete list of the world's highest-paid athletes since the first list published by Forbes in 1990. In 2002, they changed the reporting period from the full calendar year to June-to-June, and consequently, there are no records for 2001. 
Content
The data is available from 1990 to 2019. The year 2001 data is unavailable. 
Acknowledgments
The data has been extracted from topendsports.com website.


I had decided to create a new database in MYSQL and create a table so that I could import the data in a structured format. Here is my table format.

create table forbes (
	s_no int primary key,
    name varchar(30),
    nationality varchar(30),
    current_rank int,
    previous_year_rank varchar(10),
    sport varchar(30),
    year year,
    earnings float
    ); 
    

In decided to review this dataset because of my background interest in sports and I wanted to see what insights I could gather. My goal was to first review the data and see if there was anything that needed to be to be cleaned, formatted or fixed within the dataset. Upon review I found multiple errors with blank rows that needed to be replaced with null values. Further review I noticed multiple sports written or formatted differently such as “basketball” and “nba”. If this were not addressed, it would have shown them as two completely different sports thus causing confusion upon data analysis review. 
