class SearchController < ApplicationController
  def index
    companies = Company.search(criteria: params[:criteria])
    people = Person.search(criteria: params[:criteria])
      
    results = {
      companies: companies,
      people: people
    }.inject({}) do |h,(k,v)|
      h[k] = v.map { |i| i.slice(:id, :name) }
      h
    end

    render json: results
  end
end
