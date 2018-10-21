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

class Challenge < ApplicationRecord
    has_many :solutions
    accepts_nested_attributes_for :solutions
end
