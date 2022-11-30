class Roles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.string :surname
      t.string :roleName
      t.references :movie, foreign_key: true
      t.references :episode, foreign_key: true
    end
  end
end
