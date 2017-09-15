require('rspec')
require('word')
require('definition')

describe(Definition) do
  before() do
    Definition.clear
  end

  describe(".all") do
    it("displays all saved definitions from the definition array") do
      test_def = Definition.new({:definition =>"fluffy animal that hops"})
      expect(Definition.all).to(eq([]))
    end
  end

  describe("#save") do
    it("saves the definition into the array") do
      test_def = Definition.new({:definition =>"fluffy animal that hops"})
      test_def.save
      expect(Definition.all).to(eq([test_def]))
    end
  end

  describe(".clear") do
    it("clears the array of definitions") do
      test_def = Definition.new({:definition =>"fluffy animal that hops"})
      test_def.save
      Definition.clear
      expect(Definition.all).to(eq([]))
    end
  end
end
