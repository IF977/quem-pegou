json.array!(@livros) do |livro|
  json.extract! livro, :id, :nome, :autor, :edicao, :publicacao
  json.url livro_url(livro, format: :json)
end
