CREATE TABLE IF NOT EXISTS departament(
id_departament SERIAL PRIMARY KEY,
title VARCHAR(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS employee(
id_employee SERIAL PRIMARY KEY,
name_employee VARCHAR(100) NOT NULL,
chief VARCHAR REFERENCES employee(id_employee)
);

CREATE TABLE IF NOT EXISTS bridge_departament_employee(
id_departament INTEGER REFERENCES departament(id_departament),
id_employee INTEGER REFERENCES employee(id_employee)
);