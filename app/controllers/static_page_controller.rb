class StaticPageController < ApplicationController

  def welcome_home
  end

  def internal_directory
    @users = User.all
    @subdivisions = Subdivision.all
  end

  def enter_documents
  end

end
