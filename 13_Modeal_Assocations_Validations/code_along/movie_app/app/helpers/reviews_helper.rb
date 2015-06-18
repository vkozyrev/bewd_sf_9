module ReviewsHelper

  def movie_name
    if params[:movie]
      movie = Movie.find(params[:movie])
      "New Review for #{movie.title}"
    else
      "New Review"
    end
  end
end
