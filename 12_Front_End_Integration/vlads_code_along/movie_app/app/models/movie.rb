# == Schema Information
#
# Table name: movies
#
#  id            :integer          not null, primary key
#  title         :string
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  year_released :integer
#

class Movie < ActiveRecord::Base
  validates_presence_of :title, :description, :year_released
end
