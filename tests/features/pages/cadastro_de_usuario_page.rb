class User < SitePrism::Page
    set_url '/users/new'

    #preenchendo cadastro de usuario
element :nome, '#user_name' # mapeando elemento
element :last_name, 'input[id="user_lastname"]'
element :email, 'input[id="user_email"]'
element :endereco, 'input[id="user_address"]'
element :universit, 'input[id="user_university"]'
element :profissao, 'input[id="user_profile"]'
element :genero, 'input[id="user_gender"]'
element :idade, 'input[id="user_age"]'

# click de novo usuario
element :btn_criar, 'input[value="Criar"]'



def preencher # jogando as informaçoes dentro do metodo

    nome.set 'Moises'
    last_name.set 'Dos santos'
    email.set 'moisesdossantos@live.com'
    endereco.set 'campo grande'
    universit.set 'Unip'
    profissao.set 'TI'
    genero.set 'Masculino'
    idade.set 22
end

def click

    btn_criar.click

end


end