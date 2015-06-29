class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nome
      t.integer :cpf
      t.text :endereco
      t.string :curso

      t.timestamps
    end
  end
end
