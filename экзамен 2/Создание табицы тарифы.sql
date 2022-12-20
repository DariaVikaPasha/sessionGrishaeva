Create table Тарифы
(
ID_Тарифа int Primary key not null,
Код_Города int,
Название_города nvarchar(50),
Тариф_стоимость_1_мин int,
Сост_оплаты nvarchar(50)
)