-- ��������� ���� � ���������� �����������
ALTER TABLE Users ADD CONSTRAINT UQ_Email UNIQUE (email);
