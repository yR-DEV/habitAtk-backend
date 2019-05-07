class CreateCompletionDates < ActiveRecord::Migration[5.2]
  def change
    create_table :completion_dates do |t|
      t.boolean :completed
      t.references :habit, foreign_key: true

      t.timestamps
    end
  end
end
