# == Schema Information
#
# Table name: references
#
#  id         :bigint(8)        not null, primary key
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :reference do
    url { "MyString" }
  end
end
