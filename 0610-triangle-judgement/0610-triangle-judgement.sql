select *, case 
when GREATEST(x, y, z)*2 < x+y+z then 'Yes'
    else 'No' end as triangle
from Triangle;