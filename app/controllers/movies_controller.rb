class MoviesController < ApplicationController
  def show
    @movies = Movie.find(params[:id])
  end

  def index
    @movies = Movie.all
  end
end
