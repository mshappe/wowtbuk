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

FactoryBot.define do
  factory :wowt do
    roman { "MyString" }
    pronunciation { "MyString" }
    part_of_speech { "MyString" }
    definition { "MyText" }
    etymology { "MyText" }
    first_appeared { "MyText" }
  end
end
