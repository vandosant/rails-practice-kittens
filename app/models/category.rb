class Category < ActiveRecord::Base
  validates :name, presence: true, uniqueness: {case_sensitive: false}
  has_and_belongs_to_many :categorizations,
                          class_name: "Categorization",
                          foreign_key: "category_id",
                          association_foreign_key: "kitten_id",
                          join_table: :categorizations
end