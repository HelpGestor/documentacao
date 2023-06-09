CREATE DATABASE HelpGestor;

CREATE TABLE Sexo(
id_sexo CHAR(1) NOT NULL,
sexo VARCHAR(50) NOT NULL,
PRIMARY KEY (id_sexo)
);

CREATE TABLE Estado_Civil (
id_estado_civil CHAR(1) NOT NULL,
tipo_estado_civil VARCHAR(50) NOT NULL,
PRIMARY KEY (id_estado_civil)
);

CREATE TABLE Endereco (
id_endereco INT NOT NULL,
cep CHAR(8) NOT NULL,
logradouro VARCHAR(50) NOT NULL,
cidade VARCHAR(50) NOT NULL,
estado VARCHAR(50) NOT NULL,
pais VARCHAR(50) NOT NULL,
complemento VARCHAR(50) NULL,
PRIMARY KEY (id_endereco)
);

CREATE TABLE Paciente (
cpf CHAR(11) NOT NULL,
nome VARCHAR(255) NOT NULL,
sobrenome VARCHAR(40) NOT NULL,
nacionalidade VARCHAR(45) NOT NULL,
profissao VARCHAR(25) NOT NULL,
complemento VARCHAR(255) NULL,
telefone  VARCHAR(20) NOT NULL,
id_sexo CHAR(1) NOT NULL,
id_estado_civil CHAR(1) NOT NULL,
id_endereco INT NOT NULL,
PRIMARY KEY (cpf),
CONSTRAINT cpf_unique UNIQUE(cpf),
CONSTRAINT fk_Paciente_id_sexo FOREIGN KEY (id_sexo)
REFERENCES Sexo(id_sexo),
CONSTRAINT fk_Paciente_id_estado_civil FOREIGN KEY (id_estado_civil)
REFERENCES Estado_Civil(id_estado_civil),
CONSTRAINT fk_Paciente_id_endereco FOREIGN KEY (id_endereco)
REFERENCES Endereco(id_endereco)
);
    
CREATE INDEX  fk_Paciente_Sexo_idx  ON Paciente(id_sexo);
CREATE  INDEX fk_Paciente_Estado_Civil_idx ON Paciente(id_endereco);
CREATE INDEX fk_Paciente_Endereco_idx ON Paciente(id_endereco);
     
CREATE TABLE Secretaria (
id_secretaria INT NOT NULL,
nome VARCHAR(255) NOT NULL,
sobrenome VARCHAR(50) NOT NULL,
PRIMARY KEY (id_secretaria)
);

CREATE TABLE Medico (
id_medico INT NOT NULL,
nome VARCHAR(255) NOT NULL, 
sobrenome VARCHAR(50) NOT NULL,
crn VARCHAR(50) NOT NULL, 
id_secretaria INT NOT NULL,
PRIMARY KEY (id_medico),
CONSTRAINT crn_unique UNIQUE (crn),
CONSTRAINT fk_Medico_id_secretaria FOREIGN KEY (id_secretaria)
REFERENCES Secretaria(id_secretaria)
);

CREATE INDEX fk_Medico_Secretaria_idx ON Medico(id_secretaria);

CREATE TABLE Dentista (
id_dentista INT NOT NULL,
nome VARCHAR(255) NOT NULL, 
sobrenome VARCHAR(50) NOT NULL,
crf VARCHAR(50) NOT NULL,                    
id_secretaria INT NOT NULL,
PRIMARY KEY (id_dentista),
CONSTRAINT crf_unique UNIQUE (crf),
CONSTRAINT fk_Dentista_id_secretaria FOREIGN KEY (id_secretaria)
REFERENCES Secretaria(id_secretaria)
);
    
CREATE INDEX fk_Dentista_Secretaria_idx ON Dentista(id_secretaria);

CREATE TABLE Usuario ( 
id_usuario INT NOT NULL,
email VARCHAR(254) NOT NULL,
senha VARCHAR(50) NOT NULL,
id_dentista INT NOT NULL,
id_medico INT NOT NULL,
id_secretaria INT NOT NULL,
PRIMARY KEY (id_usuario),
CONSTRAINT fk_Usuario_id_dentista FOREIGN KEY (id_dentista)
REFERENCES Dentista(id_dentista),
CONSTRAINT fk_Usuario_id_medico FOREIGN KEY (id_medico)
REFERENCES Medico(id_medico),
CONSTRAINT fk_Usuario_id_secretaria FOREIGN KEY (id_secretaria)
REFERENCES Secretaria(id_secretaria)
);

CREATE INDEX fk_Usuario_Dentista_idx ON Usuario(id_dentista);

CREATE INDEX fk_Usuario_Medico_idx ON Usuario(id_medico);

CREATE INDEX fk_Usuario_Secretaria_idx ON Usuario(id_secretaria);

CREATE TABLE Consultas (
id_consultas INT NOT NULL,
data_inicio DATETIME NOT NULL,
data_fim DATETIME NULL,
diagnostico VARCHAR(255) NOT NULL,
proxima_consulta DATETIME NULL,
complemento VARCHAR(255) NULL,
id_dentista INT NOT NULL,
id_medico INT NOT NULL,
id_secretaria INT NOT NULL,
cpf CHAR(11) NOT NULL,
PRIMARY KEY (id_consultas),
CONSTRAINT fk_Consultas_id_dentista FOREIGN KEY (id_dentista)
REFERENCES Dentista(id_dentista),
CONSTRAINT fk_Consultas_id_medico FOREIGN KEY (id_medico)
REFERENCES Medico(id_medico),
CONSTRAINT fk_Consutas_id_secretaria FOREIGN KEY (id_secretaria)
REFERENCES Secretaria(id_secretaria),
CONSTRAINT fk_Consultas_cpf FOREIGN KEY (cpf)
REFERENCES Paciente(cpf)
);

CREATE INDEX fk_Consultas_Dentista_idx ON Consultas(id_dentista);

CREATE INDEX fk_Consultas_Medico_idx ON Consultas(id_medico);

CREATE INDEX fk_Consultas_Secretaria_idx ON Consultas(id_secretaria);

CREATE INDEX fk_Consultas_Paciente_idx ON Consultas(cpf);
