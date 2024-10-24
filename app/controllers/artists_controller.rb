class ArtistsController < ApplicationController
  before_action :authenticate_user!

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @shows = @artist.shows
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render :new, :unprocessable_entity
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])

    if @artist.update(artist_params)
      redirect to @artist
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def artist_params
      params.require(:artist).permit(:name, :country)
    end
end
