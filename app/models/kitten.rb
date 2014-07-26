class Kitten < ActiveRecord::Base

  validates :image, presence: true
  has_and_belongs_to_many :categorizations,
                          class_name: "Categorization",
                          foreign_key: "kitten_id",
                          association_foreign_key: "category_id",
                          join_table: :categorizations
end