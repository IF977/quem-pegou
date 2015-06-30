class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.string :nome
      t.string :autor
      t.string :anoPublicacao
      t.date :dataEmprestimo
      t.date :dataDevolucao

      t.timestamps null: false
    end
  end
end
