
app.get('/init', (req, res) => {
    const sqlQuery =  'CREATE TABLE IF NOT EXISTS user_details(id int AUTO_INCREMENT, user_name VARCHAR(250) NOT NULL, lucky_number int NOT NULL, worst_food VARCHAR(255) NOT NULL, PRIMARY KEY(id))';

    database.query(sqlQuery, (err) => {
        if (err) throw err;

        res.send('Table created!')
    });
});

app.get('/user', (req, res) => {
    const sqlQuery = 'SELECT * FROM user_details';

    database.query(sqlQuery, (err, result) => {
        if (err) throw err;

        res.json({ 'user': result });
    });
});


DROP table IF EXISTs departments;

CREATE table departments (
department_id serial PRIMARY key,
description VARCHAR(255) NOT null
);


INSERT INTO departments (description)
VALUES ('Fastfood Department');

INSERT INTO departments (description)
VALUES (11);

INSERT INTO departments (description)
VALUES ('Douglas Van Der Merwe');

select * from departments d ;



/* DROP DATABASE IF EXIST testdb;
CREATE DATABASE testdb;
USE testdb;

DROP table IF EXISTs departments;

CREATE table departments (
department_id integer PRIMARY KEY,
description VARCHAR(255) NOT null
);

INSERT INTO departments (dname)
values (“Fast Food”); */


/* CREATE TABLE lucky_number (
id integer PRIMARY KEY AUTO_INCREMENT,
lucky_number integer NOT NULL
);


INSERT INTO lucky_number(number)
values (11);

CREATE USER 'doug'@'10.0.%.%' IDENTIFIED WITH mysql_native_password BY 'MyNewPass1!';

GRANT ALL PRIVILEGES ON doug.* TO 'doug'@'10.0.%.%'; */
