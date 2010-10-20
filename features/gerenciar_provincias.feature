# language: pt
Funcionalidade: Gerenciar Províncias
  Como Administrador do sistema
  Eu quero gerenciar o cadastro de províncias
  Para permitir localizar os lugares

  @ok
  Cenário: Adicionar Província válida
    Dado que estou em listagem de províncias
    Quando eu clico "Nova Província"
    E eu defino "nome" com o valor "Cabinda"
    Quando eu pressiono em "Salvar"
    Então eu devo ver "Província Cadastrada com Sucesso."
    E eu devo ver "1 Província"

  @ok
  Cenário: Excluir Província
    Dado que tenho as seguintes províncias
      | nome    |
      | Cabinda |
    E que estou em listagem de províncias
    Quando eu clico "Excluir"
    Então eu devo ver "Província Excluida com Sucesso."
    E eu devo ver "Nenhuma Província Cadastrada"

  @ok
  Cenario: Editar Província
    Dado que tenho as seguintes províncias
      | nome    |
      | Cabinda |
    E que estou em listagem de províncias
    Então eu devo ver "Cabinda"
    Quando eu clico "Editar"
    E eu vou para edição de províncias
    E eu defino "nome" com o valor "Luanda"
    E eu pressiono em "Atualizar"
    Então eu devo ver "Província Atualizada com Sucesso."
    E eu não devo ver "Cabinda" mas sim "Luanda"

