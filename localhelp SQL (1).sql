CREATE TABLE RespostaAtendimento (
    resposta_id INT PRIMARY KEY AUTO_INCREMENT,
    chamada_id INT,
    tempo_resposta INT, -- tempo em minutos
    status VARCHAR(50),
    detalhes VARCHAR(255),
    FOREIGN KEY (chamada_id) REFERENCES ChamadasEmergencia(chamada_id)
);

CREATE TABLE Usuarios (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    telefone VARCHAR(15),
    email VARCHAR(100),
    endereco VARCHAR(255),
    cidade VARCHAR(100),
    estado VARCHAR(50),
    pais VARCHAR(50)
);

CREATE TABLE ServicosEmergencia (
    servico_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_servico VARCHAR(50),
    descricao VARCHAR(255),
    telefone VARCHAR(15)
);

CREATE TABLE Localizacoes (
    localizacao_id INT PRIMARY KEY AUTO_INCREMENT,
    latitude DECIMAL(10, 8),
    longitude DECIMAL(11, 8),
    endereco VARCHAR(255),
    cidade VARCHAR(100),
    estado VARCHAR(50),
    pais VARCHAR(50)
);

CREATE TABLE ChamadasEmergencia (
    chamada_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    servico_id INT,
    localizacao_id INT,
    data_hora DATETIME,
    descricao VARCHAR(255),
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (servico_id) REFERENCES ServicosEmergencia(servico_id),
    FOREIGN KEY (localizacao_id) REFERENCES Localizacoes(localizacao_id)

);

CREATE TABLE RespostaAtendimento (
    resposta_id INT PRIMARY KEY AUTO_INCREMENT,
    chamada_id INT,
    tempo_resposta INT, -- tempo em minutos
    status VARCHAR(50),
    detalhes VARCHAR(255),
    FOREIGN KEY (chamada_id) REFERENCES ChamadasEmergencia(chamada_id)
);