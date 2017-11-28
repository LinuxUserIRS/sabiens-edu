Feature: Remocao de escola
As um administrador
I want to ser capaz de remover escolas do sistema
So that eu possa manter o sisteme enxuto removendo escolas que n�o mais fazem parte do projeto

Scenario: Remover escola (Sucesso)
Given estou logado como administrador
And estou na p�gina "Gerenciamento de Entidades"
And o sistema possui a escola "Col�gio Salesiano" cadastrado
And o sistema possui a turma "A" associada ao "Col�gio Salesiano"
And o sistema possui o feedback de turma "Tabela de Notas" associado � turma "A"
And o "Col�gio Salesiano" n�o possui outras turmas associadas
And a turma "A" n�o possui outros feedbacks associados
When seleciono "Remover Escola"
And preencho "nome" com "Col�gio Salesiano"
And confirmo a exclus�o
Then o sistema deixa de armazenar a escola "Col�gio Salesiano"
And  o sistema deixa de armazenar a turma "A"
And o sistema deixa de armazenar o feedback "Tabela de Notas" associada � turma "A"

Scenario: Remover escola (Falha)
Given estou logado como administrador
And estou na p�gina "Gerenciamento de Entidades"
And o sistema n�o possui a escola "Col�gio Salesiano" cadastrado
When seleciono "Remover Escola"
And preencho "nome" com "Col�gio Salesiano"
And confirmo a exclus�o
Then o sistema mostra uma mensagem de erro