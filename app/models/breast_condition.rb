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
  
  def match_all_conditions?
    self.is_fever  && (
    self.is_breast_pain || 
    self.is_breast_redness || 
    self.is_breast_lump ||
    self.is_upper_limb_elevation
      )
  end
  # def match_all_conditions?
  #   self.is_fever == true && (
  #   self.is_breast_pain == true || 
  #   self.is_breast_redness == true || 
  #   self.is_breast_lump == true ||
  #   self.is_upper_limb_elevation == true
  #     )
  # end
  
  def suspected_infectious_disease?
    (
    self.is_fever && 
    self.is_breast_pain && 
    self.is_breast_redness && 
    self.is_breast_lump &&
    self.is_upper_limb_elevation == false ) &&
    self.is_systemic_symptoms 
  end
  # def suspected_infectious_disease?
  #   (
  #   self.is_fever == true && 
  #   self.is_breast_pain == false && 
  #   self.is_breast_redness == false && 
  #   self.is_breast_lump == false &&
  #   self.is_upper_limb_elevation == false ) &&
  #   self.is_systemic_symptoms == true
  # end
  
  def not_mastitis?
    ( 
      self.is_fever == false && 
      self.is_breast_pain == false && 
      self.is_breast_redness == false && 
      self.is_breast_lump == false &&
      self.is_upper_limb_elevation == false ) &&
      self.is_systemic_symptoms == false
  end
  # def not_mastitis?
  #   ( 
  #     self.is_fever == false && 
  #     self.is_breast_pain == false && 
  #     self.is_breast_redness == false && 
  #     self.is_breast_lump == false &&
  #     self.is_upper_limb_elevation == false ) &&
  #     self.is_systemic_symptoms == false
  # end
end
