select
    o.project_id,
    p.project_name,
    avg(developers.salary) average
from
    developers
    inner join devprojects o on o.dev_id = developers.id
    inner join projects p on o.project_id = p.id
group by
    o.project_id,
    p.project_name
order by
    average asc
limit
    1;