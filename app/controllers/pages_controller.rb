class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :moodselector ]

  def home
  end

  def moodselector
  end
end
