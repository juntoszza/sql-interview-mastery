-- 학습용 합성 데이터; 재실행 가능
INSERT INTO customers (customer_id, signup_date, region) VALUES
(1,'2026-01-02','KR'),(2,'2026-01-03',NULL),(3,'2026-01-09','US')
ON CONFLICT (customer_id) DO NOTHING;

INSERT INTO orders (order_id,customer_id,ordered_at,order_status,order_amount) VALUES
(101,1,'2026-01-05 02:00:00+00','paid',120.00),
(102,1,'2026-01-06 04:00:00+00','canceled',50.00),
(103,2,'2026-01-06 09:00:00+00','paid',80.00)
ON CONFLICT (order_id) DO NOTHING;

INSERT INTO order_items (order_item_id,order_id,product_id,quantity,unit_price) VALUES
(1001,101,10,1,70.00),(1002,101,11,1,50.00),
(1003,102,12,1,50.00),(1004,103,11,2,40.00)
ON CONFLICT (order_item_id) DO NOTHING;
