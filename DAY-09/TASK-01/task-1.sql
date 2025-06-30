Entities and Attributes:

-Book
BookID (Primary Key)


Title


ISBN


Price


Genre


StockQuantity


PublicationYear


PublisherID (Foreign Key)



-Author

AuthorID (Primary Key)


Name


Biography


Country

-Publisher

PublisherID (Primary Key)


Name


Address


ContactEmail

Relationships:

Book - Publisher

Relationship: Published By


Type: Many Books ? One Publisher (Many-to-One)

Book - Author

Relationship: Written By


Type: Many-to-Many


Create a bridge table called BookAuthor

             
BookID (Foreign Key)


             AuthorID (Foreign Key)

ER Diagram Sketch:

[Author]                                                             [Publisher]
+----------+                                                          +-------------+
|AuthorID  |?------------|PublisherID  |
|Name      |                                                           |Name         |
|Biography |                                                    |Address      |
|Country   |                                                    |ContactEmail |
+----------+                                                          +-------------+
      ?                                                                              ?
      |                                                                                    |
      |                                                                                    |
      ¦                                                                                ¦
      ¦                                                                            +----------+
      +-------------------|  Book    |
               |                                                                      +----------+
             ?                                                                   |BookID    |
        [BookAuthor]                                                 |Title     |
        +------------+                                                     |ISBN      |
        |BookID      |                                                     |Price     |
        |AuthorID    |                                                  |Genre     |
        +------------+                                                  |StockQty  |
                                                                                    |PubYear   |
                                                                                 |PublisherID|
                                        