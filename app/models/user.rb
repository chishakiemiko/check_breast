class User < ApplicationRecord
  has_many :breast_conditions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :username, presence: true
end
