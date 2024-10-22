class ShowsController < ApplicationController
  before_action :set_artist

  def new
    @show = @artist.shows.new
  end

  def create
    @show = @artist.shows.build(show_params)

    if @show.save
      redirect_to @artist
    else
      render :new
    end
  end

  private
    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    def show_params
      params.require(:show).permit(:venue, :city, :date)
    end
end
