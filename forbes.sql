-- Context

-- Here is a completel list of the world's highest-paid athletes since the first list published by Forbes in 1990. In 2002, they changed the reporting period from the full calendar year to June-to-June, and consequently, there are no records for 2001.

-- Content

-- The data is available from 1990 to 2019.

-- Acknowledgments

-- The data has been extracted from topendsports.com website

-- --------------------------------------------------------------------------------------------------------------------------------------


-- I will create a database + a table and gather insights 

create database forbes_richest; 


use forbes_richest; 

-- previous_year_rank had to be varchar(10) due to some special characters within the data (><) 

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
    
-- running query to make sure table was creating correctly
 
select *
from forbes;

-- I was able to cleanly import my dataset through a csv file 
    
-- cleaning + updating column names
    
update forbes
set previous_year_rank = null
where previous_year_rank = '';
    
update forbes 
set previous_year_rank = 'not ranked'
where previous_year_rank = 'none';
    
update forbes 
set previous_year_rank = null
where previous_year_rank = '?'; 
    
    
update forbes 
set previous_year_rank = null
where previous_year_rank = '??'; 

-- update sports records to match different formatiing
update forbes
set sport = 'nfl'
where sport = 'american football';

update forbes
set sport = 'f1 racing'
where sport = 'f1 motorsports';

update forbes
set sport = 'nascar'
where sport = 'auto racing';

update forbes
set sport = 'nascar'
where sport = 'auto racing (nascar)';

update forbes
set sport = 'nfl'
where sport = 'american football / baseball';

update forbes 
set sport = 'ice hockey'
where sport = 'hockey';

update forbes 
set sport = 'nba'
where sport = 'basketball';

-- there are 2 different sports labled one as Golf and one as golf, I need to make sure it counts as one sport.
update forbes
set sport = lower(sport);

    
-- avg yearly earnings to be on the forbes list from 1990-2020

select avg(earnings)
from forbes;
-- avg 45.5 million per eyar


select name, avg(earnings)
from forbes
group by name
order by avg(earnings) desc;
-- avgerage earnings per athelete 
    
    
select nationality, count(nationality)
from forbes
group by nationality
order by count(nationality) desc; 
-- number of athletes from each country that made the forbes list. There are repeats

select nationality, sum(earnings)
from forbes
group by nationality 
order by sum(earnings) desc; 
-- total earnings by country 


select year, sum(earnings) 
from forbes
group by year
order by year; 
-- total earnings overtime by athletes 


-- total earnings by sport 
select sport, sum(earnings)
from forbes
group by sport
order by sum(earnings) desc;


-- top 5 hightest earning atheletes
select name, sum(earnings)
from forbes
group by name
order by sum(earnings) desc
limit 5;


-- looking more closely into tiger woods earnings

select year, sum(earnings)
from forbes
where name = 'Tiger Woods'
group by year
order by year; 