class PagesController < ApplicationController
  def home
    
  end
  def project
    @projects = Project.all
  end
 
  def about
  end
end
