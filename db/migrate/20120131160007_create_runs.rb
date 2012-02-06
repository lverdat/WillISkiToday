class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.references :hill
      t.references :run_type
      t.integer :total
      t.integer :open

      t.timestamps
    end
    add_index :runs, :hill_id
    add_index :runs, :run_type_id
  end
end
