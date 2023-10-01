create database KALBE;
use KALBE;
create table Inventory (
	Item_code INT primary key,
	Item_name VARCHAR(255),
	Item_price DECIMAL (10,2),
	Item_total INT
);
insert into Inventory (Item_code, Item_name, Item_price, Item_total)
values
	(2341, 'Promag Tablet', 3000, 100),
	(2342, 'Hydro Coco 250ML', 7000, 20),
	(2343, 'Nutrive Benecol 100ML', 20000, 30),
	(2344, 'Blackmores Vit C 500Mg', 95000, 45),
	(2345, 'Entrasol Gold 370G', 90000, 120);

select item_name
from inventory 
where Item_total =(
	select max(Item_total) from inventory 
	);
	
update inventory 
set item_price = 85000
where item_total = (
	select max(item_total) from inventory  
	);
	
insert into Inventory (Item_code, Item_name, Item_price, Item_total)
values
	(2343, 'Promag Tablet', 3000, 100);
	
delete from inventory where item_total = (
	select min(item_total) from inventory  
	);