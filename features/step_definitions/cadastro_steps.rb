Dado('que estou na página de cadastro') do
  visit 'http://ninjamotors.herokuapp.com/cadastre-se'
end

Quando('faço o meu cadastro com') do |table|
  @usuario = table.rows_hash

  fill_in 'fullName', with: @usuario[:nome]
  fill_in 'email', with: @usuario[:email]
  fill_in 'password', with: @usuario[:senha]

  click_button 'Cadastrar'
end

Então('sou autenticado com sucesso') do
  within('.navbar') do
    menu_usuario = find('#userMenu')
    expect(menu_usuario.text).to eql @usuario[:nome]
  end
end

Quando("faço o meu cadastro com email inválido") do
  fill_in 'fullName', with: "Name Test"
  fill_in 'email', with: "email_invalido@1234"
  fill_in 'password', with: "1234"

  click_button 'Cadastrar'
end

Então("devo ver a mensagem {string}") do |invalid_mail|
  within('.form-center') do
    invalid_mail_alert = find(".alert-danger").text
    expect(invalid_mail_alert).to eql(invalid_mail)
  end
end
