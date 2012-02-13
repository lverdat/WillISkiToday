class ChangeRuns < ActiveRecord::Migration
  def change
    change_table :runs do |t|
      t.remove :total, :open
      t.boolean :open
      t.index :open
    end
  end
end