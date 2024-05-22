USE CulinaryForum;
-- Вилучення поля
ALTER TABLE Users DROP COLUMN username;

-- Додавання та зміна поля
ALTER TABLE Users ADD first_name VARCHAR(50);
GO
ALTER TABLE Users ADD last_name VARCHAR(50);
GO

-- Зміна типу поля
ALTER TABLE Users ALTER COLUMN password_hash VARCHAR(255);
GO
