class Group < ApplicationRecord
  has_many :users, through: :membre_group, :foreign_key => 'group_id'
end
