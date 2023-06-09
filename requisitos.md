## O que é HelpGestor?

HelpGestor é um site para gerenciar pacientes de uma clínica, o site terá uma IA com o objetivo de ajudar o usuário, além de um sistema básico de criptografia para proteger a integridade dos dados dos pacientes.

## Requisitos Funcionais:

**[RF001]** O sistema terá uma IA.
**[RF002]** O sistema deve poder cadastrar o usuário. 
**[RF003]** O sistema deverá poder fazer login.
**[RF004]** A IA deverá notificar o usuário.
**[RF005]** O usuário poderá solicitar ajuda de uma IA. 
**[RF006]** O sistema deve permitir cadastrar pacientes.
**[RF007]** O sistema deve permitir gerenciar os cadastros.
**[RF008]** O usuário poderá endereçar os dados dos pacientes.
**[RF009]** O usuário poderá agendar avisos.
**[RF010]** O usuário poderá excluir quaisquer cadastros feitos.
**[RF011]** O site deverá ter uma barra de pesquisa.
**[RF012]** O usuário poderá desativar a IA e todas as suas funções.
**[RF013]** O site somente irá funcionar após efetuar o login.
**[RF014]** O sistema deve permitir cadastrar as consultas dos pacientes.

## Requisitos não funcionais:

**[RNF001]** Os dados do usuário serão armazenados em um banco de dados MySQL.
**[RNF002]** Usar CSPRNG para gerar SAL.
**[RNF003]** Adicionar o SAL no início da senha do usuário.
**[RNF004]** Todos os dados devem ser armazenados usando um sistema de hash com SHA-256 ou superior.
**[RNF005]** Armazenar o SAL com o hash no banco de dados.
**[RNF006]** Caso algum erro seja localizado pelo sistema de hashing deverá ser notificado o erro pelo usuário.
**[RNF007]** As cores básicas do site terão que ser brancas, pretas e amarelas.
**[RNF008]** O usuário pode recuperar sua senha caso tenha esquecido.
**[RNF009]** O usuário poderá cadastrar quantos pacientes preferir.
**[RNF010]** O site deverá ser programado em Java.
**[RNF011]** O site deverá ser optimizado.
**[RNF012]** O site deverá ter 5 opções de cores base.
**[RNF013]** A IA deverá ter “balões de ajuda”.
**[RNF014]** A logo terá animação.
