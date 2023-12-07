USE company_db

INSERT INTO department (name)
VALUES ("Engineering"),
       ("Finance"),
       ("Legal"),
       ("Sales");

-- INSERT INTO role (title, salary, department_id)
-- VALUES ("Account Manager", 160000, 2),
--        ("Accountant", 125000, 2),
--        ("Lead Engineer", 150000, 1),
--        ("Legal Team Lead", 250000, 3),
--        ("Lawyer", 190000, 3),
--        ("Software Engineer", 120000, 1),
--        ("Sales Lead", 100000, 4),
--        ("Salesperson", 80000, 4);

INSERT INTO role (title, salary, department_id)
VALUES (
  "Sales Lead",
  100000.00,
  (
    SELECT id
    FROM department
    WHERE name = "Sales"
  )
),
(  
  "Salesperson",
  80000.00,
  (
    SELECT id
    FROM department
    WHERE name = "Sales"
  )
),
(  
  "Lead Engineer",
  150000.00,
  (
    SELECT id
    FROM department
    WHERE name = "Engineering"
  )
),
(
  "Software Engineer",
  120000.00,
  (
    SELECT id
    FROM department
    WHERE name = "Engineering"
  )
),
(
  "Account Manager",
  160000.00,
  (
    SELECT id
    FROM department
    WHERE name = "Finance"
  )
),
(
  "Accountant",
  125000.00,
  (
    SELECT id
    FROM department
    WHERE name = "Finance"
  )
),
(
  "Legal Team Lead",
  250000.00,
  (
    SELECT id
    FROM department
    WHERE name = "Legal"
  )
),
(
  "Lawyer",
  190000.00,
  (
    SELECT id
    FROM department
    WHERE name = "Legal"
  )
);

 

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES (
  "John",
  "Doe",
  (
    SELECT id
    FROM role
    WHERE title = "Sales Lead"
  ),
  NULL
),
(
  "Mike",
  "Chan",
  (
    SELECT id
    FROM role
    WHERE title = "Salesperson"
  ),
  NULL
),
(
  "Ashley",
  "Rodriquez",
  (
    SELECT id
    FROM role
    WHERE title = "Lead Engineer"
  ),
  NULL
),
(
  "Kevin",
  "Tupik",
  (
    SELECT id
    FROM role
    WHERE title = "Software Engineer"
  ),
  NULL
),
(
  "Kunal",
  "Singh",
  (
    SELECT id
    FROM role
    WHERE title = "Account Manager"
  ),
  NULL
),
(
  "Malia",
  "Brown",
  (
    SELECT id
    FROM role
    WHERE title = "Accountant"
  ),
  NULL
),
(
  "Sarah",
  "Lourd",
  (
    SELECT id
    FROM role
    WHERE title = "Legal Team Lead"
  ),
  NULL
),
(
  "Tim",
  "Allen",
  (
    SELECT id
    FROM role
    WHERE title = "Lawyer"
  ),
  NULL
);

-- Store manager_id in temporary variable
SET @John_id = (
    SELECT id
    FROM employee
    WHERE first_name = "John"
        AND last_name = "Doe"
);

UPDATE employee
SET manager_id = @John_id
WHERE first_name = "Mike"
    AND last_name = "Chan";​

SELECT *
FROM employee
WHERE manager_id IS NOT NULL;


-- INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
-- VALUES (1, "John", "Doe", 7, NULL),
--        (2, "Mike", "Chan", 8, 1),
--        (3, "Ashley", "Rodriquez", 3, NULL),
--        (4, "Kevin", "Tupik", 6, 3),
--        (5, "Kunal", "Singh", 1, NULL),
--        (6, "Malia", "Brown", 2, 5),
--        (7, "Sarah", "Lourd", 4, NULL),
--        (8, "Tom", "Allen", 5, 7);

