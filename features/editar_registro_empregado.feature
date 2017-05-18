#language: pt
#utf-8

Funcionalidade: Editar registro do empregado
	Eu como usuario Administrador
	Quero me editar o perfil de um empregado no site ORANGEHRM
	Para atualizar seu cadastro

	@wip
	Cenário: Editar registro do empregado no site
		Dado que acesso o site ORANGEHRM
		Quando realizar o login com perfil ADM
		Então efetuo a modificações e atualizo o cadastro do empregado