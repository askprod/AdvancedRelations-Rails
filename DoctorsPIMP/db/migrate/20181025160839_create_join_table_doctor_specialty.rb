class CreateJoinTableDoctorSpecialty < ActiveRecord::Migration[5.2]
  def change
    create_join_table :doctors, :specialties do |t|
      t.belongs_to :doctor
      t.belongs_to :specialty
    end
  end
end
