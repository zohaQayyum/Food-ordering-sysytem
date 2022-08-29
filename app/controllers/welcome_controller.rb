class WelcomeController < ApplicationController
  before_action :authenticate_customer!

  def index
  end
  def charts
  end
  def login
  end
end
