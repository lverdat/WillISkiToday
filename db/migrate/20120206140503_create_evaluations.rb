class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.references :run
      t.integer :note
      t.integer :snowQual
      t.string :pers

      t.timestamps
    end
  end
end
