Feature: Notificações com relação a atribuição e atrasos de tarefas. 
As a Administrador 
I want to os monitores sejam notificados de suas atribuições, atrasos e deadlines próximas nas tarefas
So that eu possa melhorar minha capacidade de gerência e os monitores possam se organizar melhor. 

Scenario: Notificar monitor de sua atribuição a uma tarefa.
Given Foi atribuído para para a monitora “Joana” a tarefa/permissão de criação relacionada ao conteúdo de “Resumo de Sistema Neurológico” com “Data de entrega” para “12/11/17”
When O servidor recebe e registra a informação na lista de tarefas.
Then  Notifica-se por meio de um email e por uma mensagem no site a monitora “Joana” da atribuição da tarefa.

Scenario: Monitor não finaliza o conteúdo no dia de entrega.
Given  O servidor tem na lista de  tarefa/permissão de criação relacionada ao conteúdo de “Resumo de Sistema Neurológico” a “monitora” chamada “Joana”  com “Data de entrega” para “12/11/17”
And ele não entregou a tarefa dentro do prazo estabelecido
When  O sistema registrar o  atraso atrelado a “Joana” e ao conteúdo de “Resumo de Sistema Neurológico”.
Then Deve se notificar o por meio de um email a administradora “Fátima” e o monitora “Joana” do atraso.

Scenario: Notificar monitor quando próximo de sua deadline. 
Given A monitora “Joana” tem a tarefa de entregar/criar o documento “Resumo do Sistema Neurológico” marcada para a data “12/11/2017”
When A data atual chega a “09/11/2017”
Then Notifica-se por email e por uma mensagem no sistema a monitora “Joana” 
