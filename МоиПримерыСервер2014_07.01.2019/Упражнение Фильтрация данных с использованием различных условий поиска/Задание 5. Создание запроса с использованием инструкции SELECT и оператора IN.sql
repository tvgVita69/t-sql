--������� 5. �������� ������� � �������������� ���������� SELECT � ��������� OR.
--1.	�������� ������, ��������� � ������� 4, ������� � ���� �������, �������������� ������ ���������, ����� ������� ���������� �� ������ �TG�. 
--      ������ ����� ��������� ������ ���� 'M' ��� 'L'.
--2.	��������� ������, ����� �� ������ ������������ ������ Execute.
--3.	����������� ���������� ������� � ���������, ��� ������������ ������ �������� ����� �������� ������.
Use AdventureWorks2014;
Go
Select ProductNumber As N'�������', Name As N'������������', ListPrice As N'�����', Color As N'����', Size As N'������', [Weight] As N'���' 
	From Production.Product
		Where ProductNumber Like 'TG%' And Size IN ('M','L');
Go
