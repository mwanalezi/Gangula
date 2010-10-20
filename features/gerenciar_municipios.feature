# language: pt
Funcionalidade: Gerenciar Municípios
  Como Administrador do sistema
  Eu quero gerenciar o cadastro de municípios
  Para permitir localizar os lugares

  @ok
  Cenário: Adicionar Município válido
    Dado que tenho as seguintes províncias
      | nome    |
      | Cabinda |
      | Luanda  |
    E que estou em listagem de municípios
    Quando eu clico "Novo Município"
    E eu defino "nome" com o valor "Cacongo"
    E eu seleciono "Cabinda" em "Provincia"
    Quando eu pressiono em "Salvar"
    Então eu devo ver "Município Cadastrado com Sucesso."
    E eu devo ver "1 Município"

  @ok
  Cenário: Excluir Município
    Dado que tenho os seguintes municípios
      | nome    |
      | Cacongo |
    E que estou em listagem de municípios
    Quando eu clico "Excluir"
    Então eu devo ver "Município Excluido com Sucesso."
    E eu devo ver "Nenhum Município Cadastrado"

  @ok
  Cenario: Editar Município
    Dado que tenho os seguintes municípios
      | nome    |
      | Cacongo |
    E que tenho as seguintes províncias
      | nome    |
      | Cabinda |
      | Luanda  |
    E que estou em listagem de municípios
    Quando eu clico "Editar"
    E eu vou para edição de municípios
    E eu defino "nome" com o valor "Cacongo"
    E eu seleciono "Cabinda" em "Provincia"
    E eu pressiono em "Atualizar"
    Então eu devo ver "Município Atualizado com Sucesso."
