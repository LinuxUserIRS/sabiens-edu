Feature: Remoção de escola
As um administrador
I want to ser capaz de remover escolas do sistema
So that eu possa manter o sisteme enxuto removendo escolas que não mais fazem parte do projeto

Scenario: Remover escola (Sucesso)
Given estou logado como administrador
And estou na página "Gerenciamento de Entidades"
And o sistema possui a escola "Colégio Salesiano" cadastrado
And o sistema possui a turma "A" associada ao "Colégio Salesiano"
And o sistema possui o feedback de turma "Tabela de Notas" associado à turma "A"
And o "Colégio Salesiano" não possui outras turmas associadas
And a turma "A" não possui outros feedbacks associados
When seleciono "Remover Escola"
And preencho "nome" com "Colégio Salesiano"
And confirmo a exclusão
Then o sistema deixa de armazenar a escola "Colégio Salesiano"
And  o sistema deixa de armazenar a turma "A"
And o sistema deixa de armazenar o feedback "Tabela de Notas" associada à turma "A"

Scenario: Remover escola (Falha)
Given estou logado como administrador
And estou na página "Gerenciamento de Entidades"
And o sistema não possui a escola "Colégio Salesiano" cadastrado
When seleciono "Remover Escola"
And preencho "nome" com "Colégio Salesiano"
And confirmo a exclusão
Then o sistema mostra uma mensagem de erro