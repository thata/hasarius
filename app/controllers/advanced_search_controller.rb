class AdvancedSearchController < ApplicationController
  def index
    @conditions = []
    if params[:conditions]
      params[:conditions].each do |cond|
        @conditions << cond
      end
    end
    @orgs = Organism.advanced_search(params[:conditions])
  end
end
