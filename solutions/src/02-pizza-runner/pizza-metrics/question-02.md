## Question

> How many unique customer orders were made?


## Solution

```sql
SELECT customer_id, pizza_id, exclusions, extras, COUNT(*) frequency
FROM customer_orders
GROUP BY (customer_id, pizza_id, exclusions, extras)
ORDER BY frequency DESC;
```

| customer\_id | pizza\_id | exclusions | extras | frequency |
| :--- | :--- | :--- | :--- | :--- |
| 103 | 1 | 4 |  | 2 |
| 101 | 1 |  |  | 2 |
| 102 | 1 | null | null | 1 |
| 101 | 2 | null | null | 1 |
| 104 | 1 | null | 1 | 1 |
| 102 | 2 |  | null | 1 |
| 103 | 2 | 4 |  | 1 |
| 103 | 1 | 4 | 1, 5 | 1 |
| 102 | 1 |  |  | 1 |
| 104 | 1 | 2, 6 | 1, 4 | 1 |
| 105 | 2 | null | 1 | 1 |
| 104 | 1 | null | null | 1 |
