Feature: Notificacoes com relacao a atribuicao e atrasos de tarefas. 
As a Administrador 
I want to os monitores sejam notificados de suas atribuicoes, atrasos e deadlines proximas nas tarefas
So that eu possa melhorar minha capacidade de gerencia e os monitores possam se organizar melhor. 

Scenario: Notificar monitor de sua atribuicao a uma tarefa.
Given Estou logado como Administrador
And Estou na página "Gerenciamento de Entidades"
When Atribuo a tarefa "Criação do formulário de sistema neurológico" à monitora "Joana" para a data "12/11/2017"
Then  Notifica-se por meio de um email a monitora "Joana" que a tarefa "Criação do formulário de sistema neurológico" foi atribuída a si até a data "12/11/2017"