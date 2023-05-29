class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :type
      t.string :purchase_date
      t.string :bloom_start
      t.string :bloom_end
      t.string :harvest_start
      t.string :harvest_end
      t.boolean :self_fertile
      t.string :description

      t.timestamps
    end
  end
end
