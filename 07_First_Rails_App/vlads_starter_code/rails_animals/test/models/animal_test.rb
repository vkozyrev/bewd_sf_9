# == Schema Information
#
# Table name: animals
#
#  id          :integer          not null, primary key
#  name        :string
#  animal_type :string
#  breed       :string
#  age         :integer
#  available   :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class AnimalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
