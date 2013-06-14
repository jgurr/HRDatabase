class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.boolean :open
      t.boolean :current
      t.string :name
      t.string :employee_id
      t.string :division_id
      t.string :title_id
      t.integer :salary

    end
  end
end
