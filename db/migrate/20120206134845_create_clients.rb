class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :id
      t.string :pass

      t.timestamps
    end
  end
end
