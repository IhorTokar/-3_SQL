-- Додавання поля з обмеженням унікальності
ALTER TABLE Users ADD CONSTRAINT UQ_Email UNIQUE (email);
