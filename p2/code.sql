SELECT *
FROM order_details od
WHERE od.order_id IN (
    SELECT o.order_id
    FROM orders o
    WHERE o.shipper_id = 3
);