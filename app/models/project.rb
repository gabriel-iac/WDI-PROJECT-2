class Project < ActiveRecord::Base
  
  belongs_to :user
  has_many :rewards
  has_many :pledges
  belongs_to :category
  has_many :comments
  mount_uploader :project_image, ProjectImageUploader
 acts_as_taggable

  validates :name, presence:true
  validates :description, presence:true
  # validates :deadline, presence:true
  validates :goal, presence:true
  validates :goal, numericality:true
  # validates :project_image, presence:true
  # validates :category, presence:true
end
