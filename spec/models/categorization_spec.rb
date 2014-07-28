describe Categorization do
  it 'requires a category id' do
    categorization = Categorization.new(:kitten_id => 1)
    expect(categorization.valid?).to eq false
    expect(categorization).to have(1).errors_on(:category_id)
  end

  it 'requires a unique category' do
    category = Category.create!(name: "Cutest!")
    categorization1 = Categorization.new(:category_id => category.id)
    categorization2 = Categorization.new(:category_id => category.id)
    expect(categorization2.valid?).to eq false
    expect(categorization2).to have(1).errors_on(:category_id)
  end
end