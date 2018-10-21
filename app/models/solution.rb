# == Schema Information
#
# Table name: solutions
#
#  id         :integer          not null, primary key
#  content    :string
#  lang       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Solution < ApplicationRecord
    belongs_to :challenge
end
