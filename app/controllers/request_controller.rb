class RequestController < ApplicationController
  def index
  end

  def create
    @request = Request.create!(:duration => params[:duration],
                               :start => params[:start],
                               :finish => params[:finished],
                               :query => params[:query],
                               :binds => params[:binds],
                               :name => params[:name],
                               :connection_id => params[:connection_id],
                               :extra => params[:extra],
                               :parameters => params[:parameters],
                               :path => params[:path])
  end

  def new
    @request = Request.new
  end

  def update
  end

  def show
  end
end
