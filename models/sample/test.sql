select
customer_id,
SUM(order_amount) AS total_revene
from public.transactions
GROUP BY customer_id