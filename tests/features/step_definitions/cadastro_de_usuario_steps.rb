Quando('eu cadastro meu usuario') do

    user.load
    user.preencher
    user.click

    sleep(3)

  end

  Entao('verifico se o usuario foi cadastrado com sucesso') do
    @texto = find('#notice')
    expect(@texto.text).to eql 'Usuário Criado com sucesso'

    sleep(3)

  end