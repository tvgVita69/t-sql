--������� 3. �������� � ���������� �������, ������������� ���������� ��������������� ������
--1.	�������� ������ � ������� Sales.SalesOrderDetail ���� ������ AdventureWorks2014, ������� ���������� ������������� �������� (���� ProductID), 
--      ������� ���������� ������� (���� OrderQty) � ����� ����� ��������� (���� LineTotal). ����� ����� ��������� ������ ���� ������ $1000000.00, � ������� ���������� ������� � ������ 5.
--2.	����������� ����������� GROUP BY ��� �������� �������� �������� � ����� ��� ���������������� ����.
--3.	����������� ����������� HAVING ��� ����������� �������, ��������������� �������. �������, ��� � ����������� HAVING ����� �������������� �������������� �������.
--4.	��������� ������ � ����������� ����������.

Use AdventureWorks2014;
Go

Select ProductID As N'�����', Avg(OrderQty) As N'������� ���������� �������', Sum(LineTotal) As N'����� ����� ���������' From Sales.SalesOrderDetail
	Group By ProductID,OrderQty,LineTotal
	Having Avg(OrderQty) < 4 And Sum(LineTotal) > $100000.00 And Sum(LineTotal) < $200000.00
Go