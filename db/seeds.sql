INSERT INTO department (name)
VALUES ("Engineering"),
       ("Finance"),
       ("Legal"),
       ("Sales");

INSERT INTO role (title, salary, department_id)
VALUES ("Account Manager", 160000, 2),
       ("Accountant", 125000, 2),
       ("Lead Engineer", 150000, 1),
       ("Legal Team Lead", 250000, 3),
       ("Lawyer", 190000, 3),
       ("Software Engineer", 120000, 1),
       ("Sales Lead", 100000, 4),
       ("Salesperson", 80000, 4);
 

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "Doe", 7, NULL),
       ("Mike", "Chan", 8, 7),
       ("Ashley", "Rodriquez", 3, NULL),
       ("Kevin", "Tupik", 6, 3),
       ("Kunal", "Singh", 1, NULL),
       ("Malia", "Brown", 2, 1),
       ("Sarah", "Lourd", 4, NULL),
       ("Tom", "Allen", 5, 4);