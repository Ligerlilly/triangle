require 'rspec'
require './lib/triangle'

describe "Triangle" do
  describe "Triangle.isTriangle?" do
    it 'if it has three sides returns true' do
      expect(Triangle.new(3,3,3).isTriangle?).to eq(true)
    end

    it 'if it doesnt have three sides returns false' do
      expect(Triangle.new(3, 3, 0).isTriangle?).to eq(false)
    end
  end
end
