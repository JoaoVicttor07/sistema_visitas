class AddDetailsToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :name, :string
    add_column :users, :cpf, :string
    add_column :users, :role, :string
    add_reference :users, :unit, null: false, foreign_key: true
    add_reference :users, :sector, null: false, foreign_key: true
  end
end
