class Aula < ApplicationRecord
  belongs_to :user
  has_rich_text :detailed_content
end
