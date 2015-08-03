class CategoriesController < ApplicationController
  has_many :projects
  validates :name, presence: true
end
