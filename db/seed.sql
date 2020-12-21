USE employees;

INSERT INTO department
  (name)
  VALUES
    ('Customer Service'),
    ('Development'),
    ('Accounting'),
    ('Sales'),
    ('Operations'),
    ('Thugs');

INSERT INTO employees.role
  (title, salary, department_id)
  VALUES
    ('Manager', '75000', 1), -- 1
    ('CSR I', '27000', 1), -- 2
    ('CSR II', '33000', 1), -- 3 
    ('CSR Lead', '45000', 1), -- 4
    ('Manager', '95000', 2), -- 5
    ('Intern', '0', 2), -- 6
    ('Jr. Developer', '33000', 2), -- 7
    ('Sr. Developer', '75000', 2), -- 8
    ('DBA', '90000', 2), -- 9
    ('Manager', '120000', 3), -- 10
    ('Accountant', '45000', 3), -- 11
    ('Tax Specialist', '88000', 3), -- 12
    ('Manager', '120000', 4), -- 13
    ('Fast Talker', '45000', 4), -- 14
    ('Faster Talker', '88000', 4), -- 15
    ('Manager', '120000', 5), -- 16
    ('Help Desk I', '35000', 5), -- 17
    ('Help Desk II', '58000', 5), -- 18
    ('Manager', '120000', 6), -- 19
    ('Hitman', '89000', 6), -- 20
    ('Arsonist', '97000', 6); -- 21

INSERT INTO employees.employee
  (first_name, last_name, role_id, manager_id)
  VALUES
    ("Buckminster","Giles", 1, NULL),
    ("Yuli","Lopez", 2, 1),
    ("Brennan","Luna", 3, 1),
    ("Sharon","Tyson", 4, 1),
    ("Inez","Barr", 5, NULL),
    ("Lyle","Clements", 6, 5),
    ("Tad","Gamble", 7, 5),
    ("Keelie","Sullivan", 8, 5),
    ("Xavier","Herrera", 9, 5),
    ("Keiko","Gross", 10, NULL),
    ("Jameson","Morris", 11, 10),
    ("Meghan","Patel", 12, 10),
    ("Jada","Slater", 13, NULL),
    ("Ira","Reese", 14, 13),
    ("Ruby","Soto", 15, 13),
    ("Samantha","Ayers", 16, NULL),
    ("Ocean","Melton", 17, 16),
    ("Barclay","Robles", 18, 16),
    ("Cole","Buck", 19, NULL),
    ("Michelle","Bartlett", 20, 19),
    ("Valentine","Callahan", 21, 19);
