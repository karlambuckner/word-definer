require('rspec')
require('word')

  describe(Word) do
    before() do
      Word.clear
    end

    it("takes user word and returns word") do
      test_word = Word.new({:word=>"bunny"})
      expect(test_word.word).to(eq("bunny"))
    end

    it("returns the id") do
      test_word = Word.new({:word=>"bunny"})
      expect(test_word.word).to(eq("bunny"))
      expect(test_word.id).to(eq(1))
    end

    describe(".all") do
      it("reveals the words that were saved into the empty words array") do
        test_word = Word.new({:word=>"bunny"})
        expect(Word.all).to(eq([]))
      end
    end

    describe("#save") do
      it("saves the word in the words array") do
        test_word = Word.new({:word=>"bunny"})
        test_word.save
        expect(Word.all).to(eq([test_word]))
      end
    end

    describe(".clear") do
      it("clears the word saved into the words array") do
        test_word = Word.new({:word=>"bunny"})
        test_word.save
        Word.clear
        expect(Word.all).to(eq([]))
      end
    end

    describe(".find") do
      it("finds a word by the id of that word") do
        test_word1 = Word.new({:word=>"bunny"})
        test_word1.save
        expect(Word.find(test_word1.word)).to(eq(test_word1))
      end
    end
  end
