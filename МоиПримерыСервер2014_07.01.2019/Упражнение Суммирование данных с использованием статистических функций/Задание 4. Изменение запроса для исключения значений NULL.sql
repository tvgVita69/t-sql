--������� 4. ��������� ������� ��� ���������� �������� NULL
--1.	�������� ������ � ������� Person.Address ���� ������ AdventureWorks2014, ������� ���������� ���������� �����������, ��� ������� ���� AddressLine2 �������� ��������, �������� �� NULL.
--2.	����������� ������� COUNT � �������, ��� ��� ������� ���������� �������� NULL, ���� ������������ � ������ ����.
--3.	��������� ������ � ����������� ����������.

Use AdventureWorks2014;
Go

Select Count(*) 
	From Person.Address
		Where AddressLine2 Is Not Null;
Go