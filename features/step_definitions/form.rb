Dado('que acesse o formulario') do
  @home = Index.new
  @home.load
end

Quando('preencho o formulario') do
  @home.input_nome.set 'gustavo'
  @home.btn_enviar.click
end

Entao('enviado com sucesso') do
  expect(page.accept_alert).to eql 'enviado com sucesso'
end