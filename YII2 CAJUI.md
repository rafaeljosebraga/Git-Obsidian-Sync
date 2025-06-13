LEMBRAR
Explorando a arquitetura do Yii2 é uma tarefa, menos complicada quando você pede ajuda de quem já sabe.

primariamente a ideia é recriar o "Registro Situação" como um "Registro Situação teste", para isso é necessário seguir os seguintes passos:

1, Configurar a [[Migration]], "Registro_Situacao_Teste" a espelho da "Registro_Situacao"

1.1, redefinir o escopo perante aos sub REGISTROS

2, Criar modelo base a partir do GII fornecido pelo YII2(Controller, Models, Views)

3, Configurar Classe Controller(Implicitamente uma possível classe service)

4,Ajustar Views a partir das views já existentes nos sub "REGISTROS" criados a essa por essa migration e depois na principal.