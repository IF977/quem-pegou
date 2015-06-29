json.array!(@users) do |user|
  json.extract! user, :id, :nome, :cpf, :endereco, :curso
  json.url user_url(user, format: :json)
end
