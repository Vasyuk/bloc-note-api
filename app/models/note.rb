class Note < ApplicationRecord
  has_many :users, through: :author_note, :foreign_key => 'note_id'
end
