class CreateDisks < ActiveRecord::Migration
  def change
    create_table :disks do |t|
      t.string :name
      t.integer :size

      t.timestamps
    end
  end
end
