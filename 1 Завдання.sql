-- Вилучення зв'язку (зовнішнього ключа) між таблицями
SELECT name
FROM sys.foreign_keys
WHERE parent_object_id = OBJECT_ID('Recipes');
