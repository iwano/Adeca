class StaticPagesController < ApplicationController
  def index
    statics = %w{home about_us contact_us}
    page = params[:static_page]
    if statics.include? page
      render locals: { page: page }
    else
      render 'public/404', layout: false, status: 404
    end
  end
end
