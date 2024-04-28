class BreastCondition < ApplicationRecord
  belongs_to :user
  
  validates :is_fever, inclusion: {in: [true, false]}
  validates :is_breast_pain, inclusion: {in: [true, false]}
  validates :is_breast_redness, inclusion: {in: [true, false]}
  validates :is_breast_lump, inclusion: {in: [true, false]}
  validates :is_upper_limb_elevation,inclusion: {in: [true, false]} 
  validates :is_systemic_symptoms, inclusion: {in: [true, false]}
  # validates :is_elapsed_time, inclusion: {in: [true, false]}
  # validates :is_medication, inclusion: {in: [true, false]}
  # validates :users_id
  # validates :is_fever, presence: true
  # validates :is_breas, presence: true
  # validates :is_breast_redne, presence: true
  # validates :is_breast_lump, presence: true
  # validates :is_upper_limb_elevati, presence: true
  # validates :is_systemic_symptoms, presence: true
  # validates :is_elapsed_time, presence: true
  # validates :is_medication, presence: true
  # validates :users_id
end
