## Question

> How many unique customer orders were made?


## Solution

```sql
SELECT customer_id, pizza_id, exclusions__clean AS exclusions, extras__clean AS extras, COUNT(*) frequency
FROM customer_orders
GROUP BY (customer_id, pizza_id, exclusions__clean, extras__clean)
ORDER BY frequency DESC;
```

| customer\_id | pizza\_id | exclusions | extras | frequency |
| :--- | :--- | :--- | :--- | :--- |
| 102 | 1 | null | null | 2 |
| 101 | 1 | null | null | 2 |
| 103 | 1 | 4 | null | 2 |
| 103 | 1 | 4 | 1,5 | 1 |
| 104 | 1 | null | 1 | 1 |
| 105 | 2 | null | 1 | 1 |
| 104 | 1 | null | null | 1 |
| 101 | 2 | null | null | 1 |
| 102 | 2 | null | null | 1 |
| 103 | 2 | 4 | null | 1 |
| 104 | 1 | 2,6 | 1,4 | 1 |
