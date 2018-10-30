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

class Wowt < ApplicationRecord
  has_and_belongs_to_many :references

  validates :roman, presence: true, uniqueness: true
  
end
