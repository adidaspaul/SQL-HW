select
    SUM(salary)
from
    developers
    inner join devskills on devskills.dev_id = developers.id
    inner join skills on devskills.skill_id = skills.id
where
    skills [1] = 'Java';