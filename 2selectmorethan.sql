select
    o.project_id,
    p.project_name,
    sum(developers.salary) sum
from
    developers
    inner join devprojects o on o.dev_id = developers.id
    inner join projects p on o.project_id = p.id
group by
    o.project_id,
    p.project_name
order by
    sum desc
limit
    1;