# language: pt
Funcionalidade: Gerenciar carreiras
  Como Administrador do sistema
  Eu quero gerenciar o cadastro de carreiras
  Para permitir que os cursos sejam classificados corretamente
  E os usuários possam localizá-los mais facilmente

  @ok
  Cenário: Adicionar Uma carreira
    Dado que estou em listagem de carreiras
    Quando eu clico "Nova Carreira"
    E eu defino "título" com o valor "Ciências Exatas"
    E eu defino "descrição" com o valor "Ciências Exatas, matemáticas e engenharias"
    Quando eu pressiono em "Salvar"
    Então eu devo ver "Carreira Cadastrada com Sucesso."
    E devo ver "Ciências Exatas"
    E devo ver "Ciências Exatas, matemáticas e engenharias"
    E eu devo ver "1 Carreira"

  @ok
  Cenário: Excluir carreira
    Dado que tenho as seguintes carreiras
      | titulo          |
      | Ciências Exatas |
    E que estou em listagem de carreiras
    Quando eu clico "Excluir"
    Então eu devo ver "Carreira Excluida com Sucesso."
    E eu devo ver "Nenhuma Carreira Cadastrada"

  @p
  Cenario: Editar Carreira
    Dado que tenho as seguintes carreiras
      | titulo           |
      | Ciências Sociais |
    E que estou em listagem de carreiras
    Quando eu clico "Editar"
    E eu vou para edição de carreiras
    E eu defino "titulo" com o valor "Ciências Exatas"
    E eu defino "descrição" com o valor "Ciências Exatas, matemáticas e engenharias"
    E eu pressiono em "Atualizar"
    Então eu devo ver "Carreira Atualizada com Sucesso."
