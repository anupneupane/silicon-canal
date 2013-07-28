class SearchController < ApplicationController
  def index
    companies = Company.search(criteria: params[:criteria])
    people = Person.search(criteria: params[:criteria])
    render json: {
      companies: companies.map{|c| c.slice(:id, :name) },
      people: people.map{|c| c.slice(:id, :name) }
    }
  end
end
