#language: pt
#utf-8

Funcionalidade: Cadastrar novo empregado
	Eu como usuario Administrador
	Quero me cadastrar no site ORANGEHRM
	Para acessar as demostrações 

	@done
	Cenário: Cadastrar novo empregado no site
		Dado que acesso o site ORANGEHRM
		Quando realizar o login com perfil ADM
		Então efetuo o cadastro de um novo empregado



	