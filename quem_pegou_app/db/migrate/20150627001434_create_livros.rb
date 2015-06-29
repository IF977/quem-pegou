class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.string :nome
      t.string :autor
      t.string :dataPublicacao
      t.string :dataEmprestimo
      t.string :dataEntrega
      t.integer :usuario_id

      t.timestamps
    end
  end
end
