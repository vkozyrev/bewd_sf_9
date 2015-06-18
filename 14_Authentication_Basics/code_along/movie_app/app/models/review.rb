# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  body       :text
#  rating     :integer
#  movie_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ActiveRecord::Base
  validates_presence_of :rating
  belongs_to :movie
end


#How i was born
#1 - rails generate model review body:text rating:integer movie:references
#2 - check db/migration | give a smell test
#3 rake db:migrate
#4 rails c - Review.first
#5 add association(s) review
  #belongs_to :movie  on review_model
  #has_many :reviews on movie_model

#run `annotate` after every migration
