class CreateMembreGroup < ActiveRecord::Migration[5.1]
  def change
    create_table :membre_groups, primary_key: %i[user_id group_id]  do |t|
      t.integer :user_id, index: true
      t.integer :group_id, index: true
    end
  end
end
