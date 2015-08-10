require 'rspec'
require './lib/triangle'

describe "Triangle" do
  describe "Triangle#isTriangle?" do
    it 'has three sides returns true' do
      expect(Triangle.new(3,3,3).isTriangle?).to eq(true)
    end

    it 'doesnt have three sides returns false' do
      expect(Triangle.new(3, 3, 0).isTriangle?).to eq(false)
    end

    it 'the sum of any two sides are greater than the third side, return false' do
      expect(Triangle.new(3, 3, 7).isTriangle?).to eq(false)
    end
  end

  describe "Triangle#isEquilateral?" do
    it 'returns true if all the sides are equal' do
      expect(Triangle.new(3, 3, 3).isEquilateral?).to eq(true)
    end

    it 'returns false if all the sides are not equal' do
      expect(Triangle.new(4, 4, 5).isEquilateral?).to eq(false)
    end

  end

  describe "Triangle#isIsosceles?" do
    it 'returns true if exactly 2 sides are equal' do
      expect(Triangle.new(3, 3, 4).isIsosceles?).to eq(true)
    end

    it 'returns false if more than 2 sides are equal' do
      expect(Triangle.new(3, 3, 3).isIsosceles?).to eq(false)
    end

    it 'returns false if no sides are equal' do
      expect(Triangle.new(1, 3, 2).isIsosceles?).to eq(false)
    end
  end
end
