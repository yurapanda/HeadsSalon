class CreateSalonEmployees < ActiveRecord::Migration
  def change
    create_table :salon_employees do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
