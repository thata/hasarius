class AdvancedSearchController < ApplicationController
  def index
    @conditions = []
    if params[:conditions]
      params[:conditions].each do |cond|
        @conditions << cond
      end
    end
    @orgs = Organism.advanced_search(params[:conditions])
    @indivisuals = Indivisual.advanced_search(params[:conditions])
    @genes = Gene.advanced_search(params[:conditions])
    @mps = MechanicalProperty.advanced_search(params[:conditions])
  end
end
