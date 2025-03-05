# 🚀 Lift Passenger Problem - SQL Solution

## 📝 Problem Statement:
The relationship between the **LIFT** and **LIFT_PASSENGERS** tables is such that multiple passengers can attempt to enter the same lift, but the total weight of the passengers in a lift cannot exceed the lift’s capacity.

### Task:
Write a SQL query that produces a **comma-separated list of passengers** who can be accommodated in each lift without exceeding the lift's capacity.  
The passengers in the list should be ordered by their weight in increasing order.

✅ You can assume the weights of passengers are unique within each lift.

---

## 📊 Dataset:

### 🚪 LIFT table:
| ID | CAPACITY_KG |
|----|-------------|
| 1  | 300         |
| 2  | 350         |

### 🧍‍♂️ LIFT_PASSENGERS table:
| PASSENGER_NAME | WEIGHT_KG | LIFT_ID |
|----------------|-----------|---------|
| Rahul         | 85        | 1       |
| Adarsh        | 73        | 1       |
| Riti          | 95        | 1       |
| Dheeraj       | 80        | 1       |
| Vimal         | 83        | 2       |
| Neha          | 77        | 2       |
| Priti         | 73        | 2       |
| Himanshi      | 85        | 2       |

---

## 💡 Solution Approach:
- Use a **CTE (Common Table Expression)** to calculate the cumulative weight of passengers per lift.
- Apply a **window function** to sum weights and check if they stay within the lift's capacity.
- Filter valid passengers using a `flag` and aggregate their names using `STRING_AGG`.

---



