
Quando("executar API usando metodo GET") do
    api = ApiUsuario.new
    @responseApiUsuario = api.listandoUsuarios
  end
  
  Então("WebService deve retornar o status {string}") do |status|
    expect(@responseApiUsuario.code).to eq status.to_i
  end
  
  Então("trazer os campos {string} - {string} no response") do |string, string2|
    
    data = @responseApiUsuario.parsed_response["data"]
    data.each do |item|
        puts item["#{string}"] 
        puts item["#{string2}"]
    
    end
  end
  
  Quando("executar API passando os dados do usuário usando POST") do
    api = ApiUsuario.new
    @responseApiUsuario = api.criarUsuario

  end
  