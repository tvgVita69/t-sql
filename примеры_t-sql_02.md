![image](https://github.com/tvgVita69/t-sql/assets/98489171/95362540-6d71-4f9e-a590-165d35a853eb)

## Ограничение и сортировка данных

#### Задача 1. Получить список с информацией обо всех сотрудниках.
<pre>
Use HRdb;
Go  
SELECT * FROM employees
Go  
</pre>

#### Задача 2. Получить список всех сотрудников с именем 'David'
<pre> 
SELECT *
  FROM employees
 WHERE first_name = 'David';
</pre>


#### Задача 3. Получить список всех сотрудников с job_id равным 'IT_PROG'
<pre> 
SELECT *
  FROM employees
 WHERE job_id = 'IT_PROG'
</pre>


#### Задача 4. Получить список всех сотрудников из 50го отдела (department_id) с зарплатой(salary), большей 4000
<pre> 
SELECT *
  FROM employees
 WHERE department_id = 50 AND salary > 4000;
</pre>


#### Задача 5. Получить список всех сотрудников из 20го и из 30го отдела (department_id)
<pre> 
SELECT *
  FROM employees
 WHERE department_id = 20 OR department_id = 30;
</pre>


#### Задача 6. Получить список всех сотрудников у которых последняя буква в имени равна 'a'
<pre> 
SELECT *
  FROM employees
 WHERE first_name LIKE '%a';
</pre>


#### Задача 7. Получить список всех сотрудников из 50го и из 80го отдела (department_id) у которых есть бонус (значение в колонке commission_pct не пустое)
<pre> 
SELECT *
  FROM employees
 WHERE     (department_id = 50 OR department_id = 80)
       AND commission_pct IS NOT NULL;
</pre>


#### Задача 8. Получить список всех сотрудников у которых в имени содержатся минимум 2 буквы 'n'
<pre> 
SELECT *
  FROM employees
 WHERE first_name LIKE '%n%n%';
</pre>


#### Задача 9. Получить список всех сотрудников у которых длина имени больше 4 букв
<pre> 
SELECT *
  FROM employees
 WHERE first_name LIKE '%_____%';
</pre>


#### Задача 10. Получить список всех сотрудников у которых зарплата находится в промежутке от 8000 до 9000 (включительно)
<pre> 
SELECT *
  FROM employees
 WHERE salary BETWEEN 8000 AND 9000;
</pre>


#### Задача 11. Получить список всех сотрудников у которых в имени содержится символ 'c'
<pre> 
SELECT *
  FROM employees
 WHERE first_name LIKE '%\c%' ESCAPE '\';
</pre>


#### Задача 12. Получить список всех ID менеджеров
<pre> 
SELECT DISTINCT manager_id
  FROM employees
 WHERE manager_id IS NOT NULL;
</pre>


#### Задача 13. Получить список работников:
<pre> 

</pre>

## Использование однострочных функций для настройки вывода

#### Задача 14. Получить список всех сотрудников у которых длина имени больше 10 букв
<pre> 
SELECT *
  FROM employees
 WHERE LEN(first_name) > 10;
</pre>


#### Задача 15. Получить список всех сотрудников у которых в имени есть буква 'b' (без учета регистра)
<pre> 
SELECT *
  FROM employees
  WHERE first_name LIKE '%\b%' ESCAPE '\';
</pre>


#### Задача 16. Получить список всех сотрудников у которых в имени содержатся минимум 2 буквы 'e'
<pre> 
SELECT *
  FROM employees
 WHERE first_name LIKE '%\ee%' ESCAPE '\';
</pre>
<pre>
SELECT *
  FROM employees
 WHERE first_name LIKE '%\e%\e%' ESCAPE '\';
</pre>

#### Задача 17. Получить список всех сотрудников зарплата которых кратна 1000
<pre> 
SELECT salary
  FROM employees
 WHERE (salary % 100)=0;
</pre>


#### Задача 18. Получить первое 2х значное число телефонного номера сотрудника если его номер в формате ХХ.ХХХX.ХХXXХХ
<pre> 
SELECT phone_number As new_phone_number
  FROM employees
 WHERE phone_number LIKE '%__.____.______';
</pre>


#### Задача 19. Получить первое слово из имени департамента для тех у кого в названии больше одного слова
<pre> 
SELECT department_name
  FROM departments
 WHERE department_name like '%[ ]%';
</pre>


#### Задача 20. Получить имена сотрудников без первой и последней буквы в имени
<pre> 
SELECT first_name, SUBSTR (first_name, 2, LENGTH (first_name) - 2) new_name
  FROM employees;
</pre>


#### Задача 21. Получить список всех сотрудников у которых последняя буква в имени равна 'm' и длинной имени большей 5ти
<pre> 
SELECT *
  FROM employees
 WHERE first_name like '%m' AND LEN(first_name) > 5;
</pre>


#### Задача 22. Получить следующую дату 
<pre> 
SELECT DATEADD(d,0,DATEDIFF(d,0,GETDATE()));
</pre>


#### Задача 23. Получить список всех сотрудников которые работают в компании больше 17 лет
<pre> 

</pre>


#### Задача 24. Получить список всех сотрудников у которых последня цифра телефонного номера нечетная и состоит из 3ех чисел разделенных точкой
<pre> 

</pre>


#### Задача 25. Получить список всех сотрудников у которых в значении job_id после знака '_' как минимум 3 символа но при этом это значение после '_' не равно 'CLERK'
<pre> 

</pre>


#### Задача 26. Получить список всех сотрудников заменив в значении PHONE_NUMBER все '.' на '-'
<pre>
SELECT phone_number, REPLACE (phone_number, '.', '-') new_phone_number
  FROM employees;
</pre>





