require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:dessert) { Dessert.new("ice cream", 90, "Zion") }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("ice cream")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(90)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("Ice Cream", "3", "Zion") }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    # subject(:dessert) { Dessert.new("ice cream", 3, "Zion") }
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("eggs")
      expect(dessert.ingredients).to include("eggs")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["eggs", "cream", "milk", "rum", "chocolate"]

      ingredients.each do |ingredient|
        dessert.add_ingredient(ingredient)
      end

      expect(dessert.ingredients).to eq(ingredients)
      dessert.mix!
      expect(dessert.ingredients).to_not eq(ingredients)
      expect(dessert.ingredients.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect {dessert.eat(4)}.to change{dessert.quantity}.to (86)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect {dessert.eat(91)}.to raise_error(RuntimeError, "not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect {dessert.serve}.to include (dessert.chef.capitalize)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
