-- FileName: lu000168-Author_Publisher-Query.sql
-- Date: 20 November 2020
-- Author: Wentao Lu
-- Comment: Lab9

--SELECT statements
SELECT * FROM inventory;
SELECT * FROM Books;
SELECT * FROM publishers;
SELECT * FROM authors;
SELECT * FROM borrowers;

--write a JOIN statement to bring the 3NF back to 1NF, confirming that the process is reversible.
SELECT bookID,inventoryID, bookTitle, authorID, authorName, publisherID, publisherName,
borrowerID, borrowerName FROM inventory NATURAL JOIN Books NATURAL JOIN publishers
NATURAL JOIN authors NATURAL JOIN borrowers;

--Write a LEFT or RIGHT OUTER JOIN statement to identify the two borrowers who have 
--not borrowed any books from the library.
SELECT * FROM borrowers LEFT OUTER JOIN inventory ON borrowers.borrowerID = inventory.borrowerID;
