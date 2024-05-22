USE CulinaryForum;
GO

-- Вилучення старого зовнішнього ключа, якщо він існує
-- У цьому випадку у нас немає специфічного імені для обмеження, тому використаємо загальне видалення обмеження
ALTER TABLE Recipes DROP CONSTRAINT IF EXISTS fk_user_id;
GO

-- Зміна поля user_id, щоб дозволити значення NULL
ALTER TABLE Recipes
ALTER COLUMN user_id INT NULL;
GO

-- Додавання нового зовнішнього ключа з новим обмеженням
ALTER TABLE Recipes
ADD CONSTRAINT fk_user_id
FOREIGN KEY (user_id)
REFERENCES Users(user_id)
ON DELETE SET NULL;
GO
