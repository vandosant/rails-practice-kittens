class Categorization < ActiveRecord::Base
  belongs_to :category

  validates :category_id, presence: {:message => "is required"}, uniqueness: {scope: :kitten_id}
end