class Seasons < ActiveRecord::Migration[7.0]
  def change
    create_table :seasons do |t|
      t.decimal :seasonNumber
      t.references :serie, foreign_key: true
    end
  end
end
