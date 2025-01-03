select user_id, concat(upper(substr(name,1,1)), lower(substr(name,2))) as name #?번째부터 ?번째까지
from Users order by 1;