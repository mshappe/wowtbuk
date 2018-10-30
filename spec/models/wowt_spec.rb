# == Schema Information
#
# Table name: wowts
#
#  id             :bigint(8)        not null, primary key
#  roman          :string
#  pronunciation  :string
#  part_of_speech :string
#  definition     :text
#  etymology      :text
#  first_appeared :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe Wowt, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
