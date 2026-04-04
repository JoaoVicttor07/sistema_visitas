class CreateUnits < ActiveRecord::Migration[8.1]
  def change
    create_table :units do |t|
      t.string :name
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
