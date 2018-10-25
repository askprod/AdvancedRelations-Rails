class CreateJoinTablePartAssembly < ActiveRecord::Migration[5.2]
  def change
    create_join_table :parts, :assemblies do |t|
      t.belongs_to :part
      t.belongs_to :assembly
    end
  end
end
