USE CulinaryForum;
-- ��������� ����
ALTER TABLE Users DROP COLUMN username;

-- ��������� �� ���� ����
ALTER TABLE Users ADD first_name VARCHAR(50);
GO
ALTER TABLE Users ADD last_name VARCHAR(50);
GO

-- ���� ���� ����
ALTER TABLE Users ALTER COLUMN password_hash VARCHAR(255);
GO
