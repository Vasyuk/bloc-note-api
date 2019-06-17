class CreateAuthorNote < ActiveRecord::Migration[5.1]
  def change
    create_table :author_notes, primary_key: %i[user_id note_id] do |t|
      t.integer :user_id, index: true
      t.integer :note_id, index: true
    end
  end
end
