class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  # GET /properties
  # GET /properties.json
  def index
    if params[:keyword]
      @properties = Property.basic_search(params['keyword'])
    else
      @properties = Property.all
    end
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # POST /properties
  # POST /properties.json

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:property_type, :city, :address, :neighborhood, :number_of_rooms, :cost_price, :sale_price, :owner, :client)
    end
end
