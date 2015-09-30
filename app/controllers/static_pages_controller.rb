class StaticPagesController < ApplicationController
  def home
    @pledges = Pledge.all
    @projects = Project.all
  end

end