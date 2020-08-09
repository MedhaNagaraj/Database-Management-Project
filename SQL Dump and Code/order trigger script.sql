



delimiter //
CREATE TRIGGER ORDERS
AFTER INSERT ON fooditems
FOR EACH ROW
BEGIN
 declare total_price int;
 declare user varchar(30);
 declare vendor varchar(30);
 select Sum(Quantity*Price),User_id,ft.Vendor_id into total_price,user,vendor from fooditems ft
 inner join food f using(Food_id)
 where Order_id=new.Order_id
 group by Order_id;
IF EXISTS(select Order_id from order_details where Order_id=new.Order_id) THEN
 UPDATE order_details SET total=total_price where Order_id=new.Order_id;
else
INSERT INTO order_details(Order_id,User_id,Vendor_id,Payment_type,Preparation_time,Tracking,total)
 VALUES (new.Order_id,user,vendor,'cash','00:10:00','ready to pickup',total_price);
 
END IF;
END //
delimiter ;

show triggers;



