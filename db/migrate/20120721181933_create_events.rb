class CreateEvents < ActiveRecord::Migration
  def change
    create_table :event do |t|
      t.string :name
      t.string :venue
      t.string :location
      t.string :url
      t.date :date
      t.time :time
      t.string :category
      t.string :image

      t.timestamps
    end
  end
end
