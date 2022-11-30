class Episodes < ActiveRecord::Migration[7.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.decimal :year
      t.string :language
      t.string :localization
      t.decimal :episodeNumber
      t.references :season, foreign_key: true
    end
  end
end
