/* Посчитать количество экземпляров  книг каждого автора из таблицы author.  
Вывести тех авторов,  количество книг которых меньше 10, в отсортированном по возрастанию количества виде. 
Последний столбец назвать Количество */

SELECT name_author,SUM(amount) Количество
FROM author LEFT JOIN book
ON author.author_id = book.author_id
GROUP BY name_author
HAVING SUM(amount) <= 10 OR Количество IS NULL = true
ORDER BY Количество
