/* Who is the best sustomer? The customer who has spens the most money will be declared the best customer.Write a query that returns the person who has spend the most money */
select customer.customer_id, customer.first_name,customer.last_name,SUM(invoice.total) as total
from customer
join invoice on customer. customer_id = invoice.customer_id
GROUP BY customer.customer_id
ORDER BY total DESC
limit 1
