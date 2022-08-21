class CreateAdmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :admissions do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :grade
      t.string :subject_choice
      t.integer :medium

      t.timestamps
    end
  end
end
