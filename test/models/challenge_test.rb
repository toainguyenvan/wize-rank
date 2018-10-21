# == Schema Information
#
# Table name: challenges
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  raw_content :string
#  language    :string
#  point       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ChallengeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
