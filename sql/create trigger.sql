CREATE TRIGGER ins_transaction 
BEFORE INSERT 
ON actor
   FOR EACH ROW 
   SET NEW.actor_age = NEW.actor_age + 1;
