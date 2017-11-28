Feature: Remoção de monitores
As um administrador
I want to ser capaz de remover monitores do sistema
So that eu possa manter o sisteme enxuto removendo pessoas que não mais fazem parte do projeto

Scenario: Remover monitor (Sucesso)
Given estou logado como administrador
And existe um monitor com email "dfb2@cin.ufpe.br"
And estou na página "Gerenciamento de Entidades"
When seleciono a opção "Remover Usuário"
And preencho o campo "email" com "dfb2@cin.ufpe.br"
And confirmo a remoção
Then o sistema mostra uma mensagem de confirmação

Scenario: Remover monitor (Falha)
Given estou logado como administrador
And não existe um monitor com email "dfb2@cin.ufpe.br"
And estou na página "Gerenciamento de Entidades"
When seleciono a opção "Remover Usuário"
And preencho o campo "email" com "dfb2@cin.ufpe.br"
And confirmo a remoção
Then o sistema mostra uma mensagem de erro