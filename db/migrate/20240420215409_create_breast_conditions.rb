class CreateBreastConditions < ActiveRecord::Migration[6.1]
  def change
    create_table :breast_conditions do |t|
      t.boolean :is_fever, null: false
      t.boolean :is_breast_pain, null: false
      t.boolean :is_breast_redness, null: false
      t.boolean :is_breast_lump, null: false
      t.boolean :is_upper_limb_elevation, null: false
      t.boolean :is_systemic_symptoms, null: false
      # t.boolean :is_elapsed_time, null: false
      # t.boolean :is_medication, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
