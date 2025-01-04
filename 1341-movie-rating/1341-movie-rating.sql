(select name as results
from(
    select name, count(*) as cnt
    from MovieRating r inner join Users u on r.user_id =u.user_id    
    group by r.user_id
)q order by cnt desc, name limit 1)

union all

(select title as results
from(
    select title, avg(rating) as avg
    from MovieRating r inner join Movies m on r.movie_id =m.movie_id    
    where created_at like '2020-02%' group by r.movie_id
)q order by avg desc, title limit 1)