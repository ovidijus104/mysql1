--1.Straipsniai saugomi lentelėje News (newsId, text, date), straipsnio komentarai saugomi lentelėje Comments (commentId, text, date, newsId). Išrinkite 10 naujausių straipsnių su paskutiniu parašytu komentaru (newsId, newsDate, newsText, commentDate, commentText ).
-- Duomenų bazės dumpas stovi BonusDB.sql faile
SELECT n.*, c1.*
FROM news n
JOIN comments c1 ON n.newsId = c1.newsId
LEFT OUTER JOIN comments c2 ON n.newsId = c2.newsId AND 
  (c1.date < c2.date OR c1.date = c2.date AND c1.commentId < c2.commentId)
WHERE c2.commentId IS NULL
ORDER BY n.date DESC LIMIT 10

