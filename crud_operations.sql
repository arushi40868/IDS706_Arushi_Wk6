--insert into university_rankings (institution, country , world_rank, score)
--values('Duke Tech','USA',350,60.5)

--select institution, world_rank 
--from university_rankings 
--where country = 'Japan' and year = 2013 and world_rank < 200
--order by institution;

--Keio University	70
--Kyoto University	15
--Nagoya University	91
--Osaka University	35
--Tohoku University	95
--University of Tokyo	14

--update university_rankings
--set score = score + 1.5
--where institution = 'University of Oxford' and year = 2014;

delete from university_rankings 
where score < 44.9 and year = 2015;


