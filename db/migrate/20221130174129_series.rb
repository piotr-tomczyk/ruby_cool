class Series < ActiveRecord::Migration[7.0]
  def change
    create_table :series do |t|
      t.string :title
      t.decimal :year
      t.string :language
      t.string :localization
      t.datetime :startDate
      t.datetime :endDate
    end
  end
end
