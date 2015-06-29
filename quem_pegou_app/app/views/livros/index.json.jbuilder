json.array!(@livros) do |livro|
  json.extract! livro, :id, :nome, :autor, :dataPublicacao, :dataEmprestimo, :dataEntrega, :usuario_id
  json.url livro_url(livro, format: :json)
end
