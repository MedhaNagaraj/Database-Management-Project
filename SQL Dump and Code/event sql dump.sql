CREATE EVENT orderdetails
ON SCHEDULE EVERY 15 MINUTE
STARTS CURRENT_TIMESTAMP
DO
   UPDATE order_details SET Tracking='delivered' limit 10;