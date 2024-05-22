-- Зміна типу обмеження цілісності для зв'язку
ALTER TABLE Recipes DROP FOREIGN KEY fk_user_id;
ALTER TABLE Recipes ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE SET NULL;
