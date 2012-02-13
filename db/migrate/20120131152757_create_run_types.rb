class CreateRunTypes < ActiveRecord::Migration
  def change
    create_table :run_types do |t|
      t.string :label

      t.timestamps
    end
  end
end
