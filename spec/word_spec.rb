require('rspec')
require('word')

  describe("#word") do
    it("takes user word and returns word") do
      test_word = Word.new({:word=>"bunny"})
      expect(test_word.word).to(eq("bunny"))
    end
  end
