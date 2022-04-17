select
    MIN(cost) mn,
    project_name
from
    projects
group by
    project_name
order by
    mn
limit
    1;