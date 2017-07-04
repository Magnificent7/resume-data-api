class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.date :start_date
      t.date :end_date
      t.string :title
      t.string :company
      t.text :details

      t.timestamps
    end
  end
end
