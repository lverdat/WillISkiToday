class CreateHills < ActiveRecord::Migration
  def change
    create_table :hills do |t|
      t.string :name
      t.decimal :snow_cover_bottom
      t.decimal :snow_cover_top
      t.integer :lifts_open
      t.integer :lifts_total

      t.timestamps
    end
  end
end
