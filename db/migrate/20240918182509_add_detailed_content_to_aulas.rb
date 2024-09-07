class AddDetailedContentToAulas < ActiveRecord::Migration[7.2]
  def change
    add_column :aulas, :detailed_content, :text
  end
end
