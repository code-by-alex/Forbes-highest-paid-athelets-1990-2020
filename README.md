Forbes Highest Paid Athletes from 1990-2020

Dataset Overview:
The project involved the analysis of Forbes Highest Paid Athletes data spanning from 1990 to 2020, sourced from Kaggle (https://www.kaggle.com/datasets/parulpandey/forbes-highest-paid-athletes-19902019/data). The dataset presents a comprehensive list of the world's highest-paid athletes since 1990, with a reporting period change in 2002 from the full calendar year to June-to-June.

Database Creation:
A new MySQL database was established for this project, and a structured table was created to facilitate the import of the Forbes dataset. The table schema includes fields such as serial number, athlete name, nationality, current rank, previous year's rank, sport, year, and earnings.

Data Cleaning and Formatting:
Upon an initial review of the dataset, meticulous attention was given to identify and rectify potential discrepancies. Notable issues included the presence of blank rows, which were appropriately replaced with null values to maintain data integrity. Additionally, variations in the representation of sports names (e.g., "basketball" vs. "NBA") were standardized to ensure consistency and prevent potential confusion during data analysis.

Insights and Goals:
Motivated by a personal interest in sports, the goal of the project was to extract meaningful insights from the Forbes Richest Athletes data. The analysis aims to uncover trends, patterns, and shifts in earnings over the years, providing a valuable perspective on the financial landscape of sports icons.

Acknowledgments:
The dataset was extracted from the topendsports.com website, highlighting the collaborative nature of data sourcing within the sports analytics community.

Next Steps:
With the dataset now organized and cleaned, the subsequent phase of the project will involve a comprehensive analysis of the Forbes Richest Athletes data. The focus will be on extracting actionable insights and trends to contribute to a deeper understanding of the financial dynamics within the world of sports.



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
