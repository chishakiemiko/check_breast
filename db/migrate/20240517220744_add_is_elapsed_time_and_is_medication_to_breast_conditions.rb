class AddIsElapsedTimeAndIsMedicationToBreastConditions < ActiveRecord::Migration[6.1]
  def change
    add_column :breast_conditions, :is_elapsed_time, :boolean, null: false
    add_column :breast_conditions, :is_medication, :boolean, null: false
  end
end
