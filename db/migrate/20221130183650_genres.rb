class Genres < ActiveRecord::Migration[7.0]
  def change
    create_table :genres do |t|
      t.string :name
    end
  end
end