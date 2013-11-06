class SearchController < ApplicationController
  def index
    @properties = Property.where('address LIKE ?', params[:keyword])
  end
end
