class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.string :place
      t.belongs_to :dogsitter
      t.belongs_to :dog
      t.timestamps
    end
  end
end
