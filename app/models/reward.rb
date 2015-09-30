class Reward < ActiveRecord::Base
  belongs_to :project
  has_many :pledges


  validates :value, numericality: true
  validates :value, presence: true
  validates :description, presence: true
  validates :estimated_delivery, presence: true
  validates :quantity, presence:true
  validates :quantity, numericality:true
end
