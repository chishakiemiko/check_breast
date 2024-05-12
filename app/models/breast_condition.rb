class BreastCondition < ApplicationRecord
  belongs_to :user
  
  validates :is_fever, inclusion: {in: [true, false]}
  validates :is_breast_pain, inclusion: {in: [true, false]}
  validates :is_breast_redness, inclusion: {in: [true, false]}
  validates :is_breast_lump, inclusion: {in: [true, false]}
  validates :is_upper_limb_elevation,inclusion: {in: [true, false]} 
  validates :is_systemic_symptoms, inclusion: {in: [true, false]}
  
  def match_all_conditions?
    is_fever  && (
    is_breast_pain || 
    is_breast_redness || 
    is_breast_lump ||
    is_upper_limb_elevation
      )
  end
  
  def suspected_infectious_disease?
    (
    is_fever && 
    is_breast_pain  == false && 
    is_breast_redness  == false && 
    is_breast_lump  == false &&
    is_upper_limb_elevation == false ) &&
    is_systemic_symptoms 
  end
  
  def not_mastitis?
    ( 
      is_fever == false && 
      is_breast_pain == false && 
      is_breast_redness == false && 
      is_breast_lump == false &&
      is_upper_limb_elevation == false ) &&
      is_systemic_symptoms == false
  end
end
