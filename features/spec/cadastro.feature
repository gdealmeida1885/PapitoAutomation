#language: pt

Funcionalidade: Cadastro do usuário
    Sendo um visitante do site
    Posso fazer meu cadastro com nome, email e senha
    Para que eu possa anunciar meu veiculo usado

@sprint1 @smoke
Cenário: Cadastro simples

	Dado que estou na página de cadastro
	Quando faço o meu cadastro com
		| nome  | Gabriel                  |
		| email | gabriel@ninjahouse.com.br |
		| senha | 123456                   |
	Então sou autenticado com sucesso

@sprint1 @wip
Cenario: Email inválido

	Dado que estou na página de cadastro
	Quando faço o meu cadastro com email inválido
	Então devo ver a mensagem "Email inválido."

@sprint1
Cenario: Senha não informada

	Dado que eu estou na página de cadastro
	Quando faço o meu cadastro sem informar a senha
	Então devo ver a mensagem "Senha não informada."

@sprint1
Cenario: Nome não informado

	Dado que eu estou na página de cadastro
	Quando faço o meu cadastro sem informar o nome
	Então devo ver a mensagem "Nome não informado."

@sprint2
Cenario: Senha muito curta
	
	Dado que eu estou na página de cadastro
	Quando faço o meu cadastro com senha com de 5 digitos
	Então devo ver a mensagem "Senha deve ter pelo menos 6 caracteres."
