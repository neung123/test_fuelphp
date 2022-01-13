USE root;

CREATE TABLE book ( 
   id INT PRIMARY KEY AUTO_INCREMENT, 
   title VARCHAR(80) NOT NULL, 
   author VARCHAR(80) NOT NULL, 
   price DECIMAL(10, 2) NOT NULL 
);

INSERT 
INTO 
   book(title, 
   author, 
   price) 
VALUES( 
   'The C Programming Language', 
   'Dennie Ritchie', 
   25.00 
),( 
   'The C++ Programming Language', 
   'Bjarne Stroustrup', 
   80.00
),( 
   'C Primer Plus (5th Edition)', 
   'Stephen Prata', 
   45.00 
),('Modern PHP', 'Josh Lockhart', 10.00),( 
   'Learning PHP, MySQL & JavaScript, 4th Edition', 
   'Robin Nixon', 
   30.00 
),( 
   'Solo leveling', 
   'kr', 
   270.00 
)