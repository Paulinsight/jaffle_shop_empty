select
    id as customer_id,
    -- prend le premier mot comme prénom (\S+) et tout le reste comme nom
    REGEXP_EXTRACT(name, r'^(\S+)') AS first_name,
    REGEXP_EXTRACT(name, r'\s+(.*)$') AS last_name

from high-nature-448517-t4.raw.raw_customers