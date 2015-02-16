class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.integer :no_of_darts
      t.boolean :manager

      t.timestamps null: false
    end
  end
end
