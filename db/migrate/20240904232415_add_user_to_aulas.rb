class AddUserToAulas < ActiveRecord::Migration[7.2]
  def change
    add_reference :aulas, :user, null: false, foreign_key: true
  end
end
