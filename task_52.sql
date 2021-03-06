/* Вывести в алфавитном порядке всех авторов, которые пишут только в одном жанре. 
Поскольку у нас в таблицах так занесены данные, что у каждого автора книги только в одном жанре,  для этого запроса внесем изменения в таблицу book. 
Пусть у нас  книга Есенина «Черный человек» относится к жанру «Роман», а книга Булгакова «Белая гвардия» к «Приключениям» (эти изменения в таблицы уже внесены) */

SELECT name_author 
FROM author INNER JOIN (SELECT author_id
FROM book
GROUP BY author_id
HAVING count(distinct(genre_id)) = 1) AS query_1
ON query_1.author_id = author.author_id
ORDER BY name_author
