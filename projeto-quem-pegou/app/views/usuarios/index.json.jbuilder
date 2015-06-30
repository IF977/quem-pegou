json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nome, :cpf, :endereco, :curso
  json.url usuario_url(usuario, format: :json)
end
