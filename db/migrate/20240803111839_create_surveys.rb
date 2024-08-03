class CreateSurveys < ActiveRecord::Migration[7.1]
  def change
    create_table :surveys do |t|
      t.string :choice
      t.string :destination
      t.text :reason

      t.timestamps
    end
  end
end
