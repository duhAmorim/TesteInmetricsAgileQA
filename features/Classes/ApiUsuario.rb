class ApiUsuario
    attr_accessor :urlApi
    attr_accessor :idFake
    attr_accessor :emailFake
    attr_accessor :firstNameFake
    attr_accessor :lastNameFake
    attr_accessor :avatarFake

    urlApi = 'https://reqres.in/api/users?page=2'
    idFake =Faker::Number.decimal_part(digits: 2)
    emailFake = Faker::Internet.email
    firstNameFake = Faker::Name.name
    lastNameFake =Faker::Name.name
    avatarFake = Faker::Avatar.image

    def listandoUsuarios
        listagemUsuarios = HTTParty.get('https://reqres.in/api/users?page=2')
        return listagemUsuarios
    end

    def criarUsuario 
        @body =
        {
            "id": idFake,
            "email": "#{emailFake}",
            "first_name": "#{firstNameFake}",
            "last_name": "#{lastNameFake}",
            "avatar": "#{avatarFake}"
        }
        retornoPost = HTTParty.post('https://reqres.in/api/users',body: @body)
        
        return retornoPost
    end
end