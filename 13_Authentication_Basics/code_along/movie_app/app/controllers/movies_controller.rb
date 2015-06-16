class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render "new"
    end
  end

  def edit
    @movie = set_movie
  end

  def update
    @movie = set_movie
    if @movie.update(movie_params)
      redirect_to movie_path(@movie), notice: "Movie successfully updated"
    else
      render "edit"
    end
  end

  def show
    @movie = set_movie
    @reviews = @movie.reviews
  end

  def destroy
    @movie = set_movie
    @movie.destroy
    redirect_to movies_path
  end

  private
  def set_movie
    Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :description, :year_released, :movie_image)
  end
end
