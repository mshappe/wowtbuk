# == Schema Information
#
# Table name: references
#
#  id         :bigint(8)        not null, primary key
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Reference, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
