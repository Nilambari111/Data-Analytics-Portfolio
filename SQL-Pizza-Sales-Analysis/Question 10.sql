-- Determine the top 3 most ordered pizza types based on revenue.
SELECT
pizza_types.name,
sum(order_details.quantity * pizzas.price) AS revenue FROM pizza_types
JOIN pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN order_details ON order_details.pizza_id = pizzas.pizza_id group by 
pizza_types.name order by revenue desc limit 3;