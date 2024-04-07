--������� 1. ����������� ����������� �������� � ������� ��������� UNION ALL
--1.	�������� ������, ������� ���������� ������������ ������ ���� ����� �� ������ TestA � TestB.
--2.	����������� �������� UNION ALL.
--3.	��������� ������ � ����������� ����������. 

Create DataBase testing;
Go
Create Table TestB 
(
    Id Int Primary Key,
    Name VarChar(50) Not Null,
    Gender Varchar(50) Not Null,
    Age Int Not Null,
    TotalScore Int Not Null,   
 );
Go 
Insert Into TestB
	Values
		(1, 'Holly', 'Female', 20, 500), 
		(2, 'Jony', 'Male', 22, 545), 
		(3, 'Ararat', 'Male', 25, 600), 
		(4, 'Laura', 'Male', 18, 400), 
		(5, 'Alan', 'Female', 20, 500), 
		(6, 'Katarina', 'Male', 22, 500), 
		(7, 'Joseph', 'Female', 18, 643), 
		(8, 'Mikl', 'Male', 23, 543), 
		(9, 'Willy', 'Female', 21, 499), 
		(10,'Lisa', 'Male', 27, 400);
Go

Select *
	From TestA;
Go
Select *
	From TEstB;
Go
-- �������� UNION ALL.
Select *
	From TestA
Union All
Select *
	From TestC
Union All
Select *
	From TEstB;
Go