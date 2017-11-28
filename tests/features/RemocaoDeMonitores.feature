Feature: Remo��o de monitores
As um administrador
I want to ser capaz de remover monitores do sistema
So that eu possa manter o sisteme enxuto removendo pessoas que n�o mais fazem parte do projeto

Scenario: Remover monitor (Sucesso)
Given estou logado como administrador
And existe um monitor com email "dfb2@cin.ufpe.br"
And estou na p�gina "Gerenciamento de Entidades"
When seleciono a op��o "Remover Usu�rio"
And preencho o campo "email" com "dfb2@cin.ufpe.br"
And confirmo a remo��o
Then o sistema mostra uma mensagem de confirma��o

Scenario: Remover monitor (Falha)
Given estou logado como administrador
And n�o existe um monitor com email "dfb2@cin.ufpe.br"
And estou na p�gina "Gerenciamento de Entidades"
When seleciono a op��o "Remover Usu�rio"
And preencho o campo "email" com "dfb2@cin.ufpe.br"
And confirmo a remo��o
Then o sistema mostra uma mensagem de erro