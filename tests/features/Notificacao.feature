Feature: Notificacoes com relacao a atribuicao e atrasos de tarefas. 
As a Administrador 
I want to os monitores sejam notificados de suas atribuicoes, atrasos e deadlines proximas nas tarefas
So that eu possa melhorar minha capacidade de gerencia e os monitores possam se organizar melhor. 

Scenario: Notificar monitor de sua atribuicao a uma tarefa.
Given Estou logado como Administrador
And Estou na página "Gerenciamento de Entidades"
When Atribuo a tarefa "Criação do formulário de sistema neurológico" à monitora "Joana" para a data "12/11/2017"
Then  Notifica-se por meio de um email a monitora "Joana" que a tarefa "Criação do formulário de sistema neurológico" foi atribuída a si até a data "12/11/2017"

Scenario: Monitor nao finaliza o conteudo no dia de entrega.
Given  O servidor tem na lista de  tarefa/permissao de criacao relacionada ao conteudo de "Resumo de Sistema Neurologico" a "monitora" chamada "Joana"  com "Data de entrega" para "12/11/17"
And ele nao entregou a tarefa dentro do prazo estabelecido
When  O sistema registrar o  atraso atrelado a "Joana" e ao conteudo de "Resumo de Sistema Neurologico".
Then Deve se notificar o por meio de um email a administradora "Fatima" e o monitora "Joana" do atraso.
