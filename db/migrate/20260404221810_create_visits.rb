class CreateVisits < ActiveRecord::Migration[8.1]
  def change
    create_table :visits do |t|
      t.references :visitor, null: false, foreign_key: true
      t.references :unit, null: false, foreign_key: true
      t.references :sector, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :status
      t.datetime :date_time

      t.timestamps
    end
  end
end
