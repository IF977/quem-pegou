json.array!(@livros) do |livro|
  json.extract! livro, :id, :nome, :autor, :anoPublicacao, :dataEmprestimo, :dataDevolucao
  json.url livro_url(livro, format: :json)
end
