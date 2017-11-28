Feature: Notifica��es com rela��o a atribui��o e atrasos de tarefas. 
As a Administrador 
I want to os monitores sejam notificados de suas atribui��es, atrasos e deadlines pr�ximas nas tarefas
So that eu possa melhorar minha capacidade de ger�ncia e os monitores possam se organizar melhor. 

Scenario: Notificar monitor de sua atribui��o a uma tarefa.
Given Foi atribu�do para para a monitora �Joana� a tarefa/permiss�o de cria��o relacionada ao conte�do de �Resumo de Sistema Neurol�gico� com �Data de entrega� para �12/11/17�
When O servidor recebe e registra a informa��o na lista de tarefas.
Then  Notifica-se por meio de um email e por uma mensagem no site a monitora �Joana� da atribui��o da tarefa.

Scenario: Monitor n�o finaliza o conte�do no dia de entrega.
Given  O servidor tem na lista de  tarefa/permiss�o de cria��o relacionada ao conte�do de �Resumo de Sistema Neurol�gico� a �monitora� chamada �Joana�  com �Data de entrega� para �12/11/17�
And ele n�o entregou a tarefa dentro do prazo estabelecido
When  O sistema registrar o  atraso atrelado a �Joana� e ao conte�do de �Resumo de Sistema Neurol�gico�.
Then Deve se notificar o por meio de um email a administradora �F�tima� e o monitora �Joana� do atraso.

Scenario: Notificar monitor quando pr�ximo de sua deadline. 
Given A monitora �Joana� tem a tarefa de entregar/criar o documento �Resumo do Sistema Neurol�gico� marcada para a data �12/11/2017�
When A data atual chega a �09/11/2017�
Then Notifica-se por email e por uma mensagem no sistema a monitora �Joana� 
