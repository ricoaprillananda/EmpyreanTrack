# EmpyreanTrack ⌚
Elevate workforce management to the stratosphere. EmpyreanTrack is a sleek, resilient PL/SQL engine built to streamline employee records, departmental structure, and payroll intelligence. Lightweight in execution yet formidable in scope—it transforms data into clarity, and clarity into control. Your organization, reimagined at its peak.

---

## Features

> Relational schema with three core entities: Departments, Employees, and Salaries.

> Full CRUD operations for employee and salary management.

> Stored procedure for calculating aggregate salary by department.

> Referential integrity enforced with foreign keys.

> Error handling in procedural logic.

```pysql
Project Structure
EmpyreanTrack/
├── sql/
│   ├── tables.sql            # Schema definitions
│   ├── crud_operations.sql   # Insert, update, and delete examples
│   ├── procedures.sql        # Stored procedure(s)
├── docs/
│   └── ERD.png               # Entity Relationship Diagram (optional)
├── LICENSE                   # MIT License
└── README.md                 # Project documentation
```
---

## Quick Start

### 1. Create Schema

```sql
Run the schema definition script:
```

@sql/tables.sql

### 2. Insert Sample Data

Populate the tables with example records:

```sql
@sql/crud_operations.sql
```

### 3. Load Procedure

Create the stored procedure:

```sql
@sql/procedures.sql
```

### 4. Execute Procedure

Enable output and calculate salary totals:

```sql
SET SERVEROUTPUT ON;
EXEC Calculate_Total_Salary(1);
```

## Example Output

```rust
Total Salary for Department 1 = 11700
Total Salary for Department 2 = 4800
No salary data found for department 99
```
---

## License

This project is licensed under the MIT License. See the LICENSE
 file for details.

---

## Author
Created by Rico APrilla Nanda
