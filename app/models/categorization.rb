class Categorization < ActiveRecord::Base
  validates :category_id, presence: true, uniqueness: true
end