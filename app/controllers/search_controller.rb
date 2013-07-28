class SearchController < ApplicationController
  def index
    render json: {
      companies: Company.search(params[:criteria]).map{|c| c.slice(:id, :name) }
    }
  end
end
