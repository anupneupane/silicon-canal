class SearchController < ApplicationController
  def index
    @companies = Company.search(criteria: params[:criteria])
    @people = Person.search(criteria: params[:criteria])
      
    respond_to do |format|
      format.json { render_as_json }
      format.html
    end
  end

  private

    def render_as_json
      results = {
        companies: @companies,
        people: @people
      }.inject({}) do | hash, (key,values) |
        hash[key] = values.map { |item| item.slice(:id, :name) }
        hash
      end

      render json: results
    end
end
