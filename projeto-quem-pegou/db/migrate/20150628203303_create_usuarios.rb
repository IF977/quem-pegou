class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :cpf
      t.string :endereco
      t.string :curso

      t.timestamps null: false
    end
  end
end
