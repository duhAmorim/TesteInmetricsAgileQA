#language: pt
#utf-8
@ApiUsuario
Funcionalidade:Validar API de usuário
@getUsuario
Cenário: Fazer um get na API de usuário
Quando executar API usando metodo GET
Então WebService deve retornar o status '200'
E trazer os campos 'id' - 'first_name' no response
@postUsuario
Cenário: Criar um novo usuário via API
Quando executar API passando os dados do usuário usando POST
Então WebService deve retornar o status '201'