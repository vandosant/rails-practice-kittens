require 'rails_helper'

describe Categorization do
  it 'is invalid without a category' do
    kitten = Kitten.create!(image: "http://i.imgur.com/mE13UCtb.jpg")
    categorization = Categorization.new(kitten_id: kitten.id, category_id: nil)
    expect(categorization.valid?).to eq false
    expect(categorization).to have(1).errors_on(:category_id)
  end

  it 'is valid with a category' do
    kitten = Kitten.create!(image: "http://i.imgur.com/mE13UCtb.jpg")
    category = Category.create!(name: "Cutest!")
    categorization = Categorization.new(kitten_id: kitten.id, category_id: category.id)
    expect(categorization.valid?).to eq true
    expect(categorization).to have(0).errors_on(:category_id)
  end
end