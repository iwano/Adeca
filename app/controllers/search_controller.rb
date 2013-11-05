class SearchController < ApplicationController
  def index
    @properties = Property.all
  end
end
