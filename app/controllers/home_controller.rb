class HomeController < ApplicationController
  def index
    @request = Request.paginate(:page => params[:page], :per_page => 10)
  end
end