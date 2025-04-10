#Create a database named HR and create the tables shown inside this database by writing SQL code.
#Erstellen Sie eine Datenbank namens HR und erstellen Sie die gezeigten Tabellen in dieser Datenbank mit SQL-Code.
SELECT * FROM PERSON;
SELECT * FROM DEPARTMENT;
SELECT * FROM POSITION;

1. Write an SQL query that retrieves all employees first names, last names, and salary information.
Schreiben Sie eine SQL-Abfrage, die die Vor-, Nachnamen und Gehaltsinformationen aller Mitarbeiter abruft.

SELECT NAME_ ,SURNAME ,SALARY FROM PERSON;

2. Write a query that lists the first name, last name, and birth date of only female employees (GENDER = 'K').
2. Schreiben Sie eine Abfrage, die die Vornamen, Nachnamen und Geburtsdaten nur weiblicher Mitarbeiter (GENDER = 'K') auflistet.

SELECT NAME_ ,SURNAME, BIRTHDATE FROM PERSON WHERE (GENDER = 'K');

3. List the names and hire dates of employees who were hired after the year 2017.
3. Listen Sie die Namen und Einstellungsdaten der Mitarbeiter auf, die nach dem Jahr 2017 eingestellt wurden.

SELECT NAME_ , INDATE FROM PERSON WHERE INDATE>='20171230';

4. Add a new employee (Example: Ali Veli, ID No: 12345678901, Male, born on 1985-12-05, hired on 2022-01-15, Department: 3, Position: 40, Salary: 6000).
4. Fügen Sie einen neuen Mitarbeiter hinzu (Beispiel: Ali Veli, ID-Nr.: 12345678901, männlich, geboren am 05.12.1985, eingestellt am 15.01.2022, Abteilung: 3, Position: 40, Gehalt: 6000).

INSERT INTO PERSON (ID,CODE,TCNUMBER,NAME_,SURNAME,GENDER,BIRTHDATE,INDATE,OUTDATE,DEPARTMENTID,POSITIONID,TELNR,SALARY) VALUES ('A101','1781','Ali', 'Veli', '12345678901', '' ,'', 'E', '1985-12-05','2025-05-04','3','40','123434234','6000');

5. Update Ferhat Cinar’s salary to 6000.
5. Aktualisieren Sie das Gehalt von Ferhat Cinar auf 6000.

UPDATE PERSON SET SALARY = 6000 WHERE [NAME_]= 'Ferhat' AND [SURNAME] = 'CINAR';

SELECT * FROM PERSON WHERE [NAME_]= 'Ferhat' AND [SURNAME] = 'CINAR';

6. Delete Deniz Eravcı from the database.
6. Löschen Sie Deniz Eravcı aus der Datenbank.

DELETE FROM PERSON WHERE NAME_ = 'Deniz' AND SURNAME = 'Eravcı';

SELECT * FROM PERSON WHERE NAME_ = 'Deniz' AND SURNAME = 'Eravcı';

7. List employees who were born before the year 1960.
7. Listen Sie Mitarbeiter auf, die vor dem Jahr 1960 geboren wurden.

SELECT * FROM PERSON WHERE BIRTHDATE<'1960-01-01';

8. List employees who were born before 1960 and whose salary is higher than 5000.
8. Listen Sie Mitarbeiter auf, die vor 1960 geboren wurden und deren Gehalt über 5000 liegt.

SELECT * FROM PERSON WHERE BIRTHDATE<'1960-01-01' AND SALARY > 5000

9. List employees whose Department ID is 4 or whose salary is more than 5500.
9. Listen Sie Mitarbeiter auf, deren Abteilungs-ID 4 ist oder deren Gehalt mehr als 5500 beträgt.

SELECT * FROM PERSON WHERE DEPARTMENTID = 4 OR SALARY>5500;

10. Increase the salaries of employees whose exit date (OUTDATE) is NULL by 10%.
10. Erhöhen Sie die Gehälter der Mitarbeiter, deren Austrittsdatum (OUTDATE) NULL ist, um 10 %.

UPDATE PERSON 
SET SALARY = SALARY * 1.1 
WHERE OUTDATE IS NULL;
SELECT * FROM PERSON WHERE OUTDATE IS NULL;


11. Delete employees who were hired before 2015 and whose salary is less than 5000.
11. Löschen Sie Mitarbeiter, die vor 2015 eingestellt wurden und deren Gehalt unter 5000 liegt.


DELETE FROM PERSON 
WHERE INDATE<'2015-01-01' AND SALARY<5000;

12. List how many different departments exist in the dataset.
12. Listen Sie auf, wie viele verschiedene Abteilungen es im Datensatz gibt.

SELECT COUNT(DEPARTMENT) FROM DEPARTMENT;

13. Sort the employees by salary from highest to lowest.
13. Sortieren Sie die Mitarbeiter nach Gehalt, vom höchsten zum niedrigsten.

SELECT * FROM PERSON 
ORDER BY SALARY DESC ;


14. List the top 5 employees with the highest salary.
14. Listen Sie die 5 Mitarbeiter mit dem höchsten Gehalt auf.

SELECT TOP 5 [NAME_] ,[SURNAME], [SALARY] FROM PERSON ORDER BY [SALARY] DESC