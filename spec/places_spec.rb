require('rspec')
require('places')

describe(Places) do
  before() do
    Places.clear()
  end
  describe('#location') do
    it('will return the location') do
    test_place = Places.new("Ohio")
    expect(test_place.location()).to(eq('Ohio'))
    end
  end

  describe('.visited') do
    it('will display an empty array') do
    expect(Places.visited()).to(eq([]))
      end
    end

    describe('#store') do
      it('will push items inside of array') do
        test_place = Places.new("PDX")
        test_place.store()
        expect(Places.visited()).to(eq([test_place]))
      end
    end

    describe('.clear') do
      it('will empty array') do
      expect(Places.clear).to(eq([]))
      end
    end

end
