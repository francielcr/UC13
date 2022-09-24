USE BET7FST4;

SELECT*FROM cadastro;

-- insert informando os campos(precisa informar os valores de acordo com a ordem que os campos foram informados)
INSERT INTO cadastro (nome, sobrenome, salario, endereco, dt_cadastro) VALUES ('FERNADO', 'ROMERO' , 2000, 'CORREIA 100', SYSDATETIME());
SELECT*FROM cadastro;

INSERT INTO cadastro (salario, nome, sobrenome, endereco, dt_cadastro) VALUES (2500, 'CARLOS', 'MARTINS', 'PIAUI 100', SYSDATETIME());
SELECT*FROM cadastro;

INSERT INTO cadastro VALUES ('Miguel', 'Carmin' , 4000, 'Piaui 100', SYSDATETIME());
INSERT INTO cadastro VALUES ('Camila', 'Pacheco' , 8000, 'Sao Jorge 84', SYSDATETIME());
INSERT INTO cadastro VALUES ('Marina', 'Augusto' , 1400, 'Nova Tatuape 100', SYSDATETIME());
INSERT INTO cadastro VALUES ('Roberto', 'Eduardo' , 800, 'Jurubatuba 505', SYSDATETIME());
INSERT INTO cadastro VALUES ('Eduardo', 'Gomes' , 1000, 'Estrela 14', SYSDATETIME());
INSERT INTO cadastro VALUES ('Mario', 'Temer' , 3500, 'Moreira 10', SYSDATETIME());
INSERT INTO cadastro VALUES ('Marcelo', 'Juracy' , 7350, 'Santa Elvira', SYSDATETIME());
SELECT*FROM cadastro;

--retornar todos os registros da tabela cadastro, referentes aos funcionários marina e eduardo

SELECT NOME, SOBRENOME FROM CADASTRO WHERE NOME IN ('marina', 'Eduardo');

SELECT * FROM CADASTRO WHERE NOME = 'marina' OR nome = 'Eduardo';

--retornar todos os registros da tabela com um calculo de quantos funcionarios ganham em um ano de trabalho. Criar o apelido anual.

SELECT *, salario * 12 AS "ANUAL" FROM cadastro;
--selecionar as colunas nome e sobrenome da tabela cadastro e simular um aumento no salário de 10%, 
--colocando um apelido na coluna com um nome de "aumento"

SELECT nome, sobrenome, salario * 1.1 AS "Aumento" FROM cadastro;

--selecionar todos os funcionarios que ganham entre 4000 e 5000;
SELECT * FROM cadastro WHERE  salario >= 4000 and salario <= 5000;
SELECT * FROM cadastro WHERE  salario between 4000 and 5000;

--selecionar todos os funcionarios que ganham maior ou igual a 4000;
SELECT * FROM cadastro WHERE  salario >= 4000;

-- selecionar todos os funcionarios que possuem a letra "a" no nome;
SELECT * FROM cadastro WHERE nome like '%a%';

-- selecionar todos os funcionarios que comecem a letra "m" no nome;
SELECT * FROM cadastro WHERE nome like 'M%';

--alterar o salario do funcionário Marcelo para 2000.
UPDATE cadastro SET salario = 2000 WHERE nome = 'MARCELO';

--Delete
DELETE FROM cadastro WHERE nome = 'CARLOS';