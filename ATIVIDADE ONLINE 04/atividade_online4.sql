
CREATE LOGIN aluno
WITH PASSWORD = '1234'

CREATE USER aluno for LOGIN aluno;

GRANT SELECT TO aluno