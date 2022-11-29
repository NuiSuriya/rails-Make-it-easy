class PagesController < ApplicationController
 skip_before_action :authenticate_user!, only: :home
  def uikit
  end
  
  def home
  end
end
