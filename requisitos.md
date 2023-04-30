# Requisitos Funcionais:

[RF001] O sistema deve poder cadastrar o usuário.

[RF002] O sistema deverá poder fazer login.

[RF003] O sistema deverá notificar o usuário.

[RF004] O usuário poderá solicitar ajuda de uma IA.

[RF005] O sistema deve permitir cadastrar pacientes.

[RF006] O sistema deve permitir gerenciar os cadastros.

[RF007] O usuário poderá endereçar os dados dos pacientes.

[RF008] O usuário poderá agendar avisos.

[RF009] O usuário poderá excluir quaisquer cadastros feitos.

[RF010] O site deverá ter uma barra de pesquisa.

[RF011] O usuário poderá adicionar uma notação ao lado do nome do paciente.

[RF012] O site somente irá funcionar após efetuar o login.


# Requisitos não funcionais:

[RNF001] Os dados do usuário serão armazenados em um banco de dados MySQL.

[RNF002] Usar CSPRNG para gerar SAL.

[RNF003] Adicionar o SAL no início da senha do usuário.

[RNF004] Todos os dados devem ser armazenados usando um sistema de hash com SHA-256 ou superior.

[RNF005] Armazenar o SAL com o hash no banco de dados.

[RNF006] Caso algum erro seja localizado pelo sistema de hashing deverá ser notificado o erro pelo usuário.

[RNF007] As cores básicas do site terão que ser brancas, pretas e amarelas.

[RNF008] O usuário pode recuperar sua senha caso tenha esquecido.

[RNF009] O usuário poderá cadastrar quantos pacientes preferir.

[RNF010] O site deverá ser programado em Java.

[RNF011] O site deverá ser optimizado.

