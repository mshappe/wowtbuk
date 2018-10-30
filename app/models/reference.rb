# == Schema Information
#
# Table name: references
#
#  id         :bigint(8)        not null, primary key
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reference < ApplicationRecord
  has_and_belongs_to_many :wowts
end
