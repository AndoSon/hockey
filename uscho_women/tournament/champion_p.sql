begin;

select
school_name,p::numeric(6,5)
from uscho_women.rounds
where round_id=4
order by p desc;

copy
(
select
school_name,p::numeric(6,5)
from uscho_women.rounds
where round_id=4
order by p desc
) to '/tmp/champion_p.csv' csv header;

commit;
