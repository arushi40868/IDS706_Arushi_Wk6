select distinct(institution), avg(score) as avg_score, avg(publications ) as avg_pub
from university_rankings 
where country = 'USA' and year> 2014
group by institution 
order by institution, avg_score, avg_pub;

