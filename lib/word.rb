class Word
  @@words = []
  attr_accessor(:word, :definitions, :id)

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @id = @@words.length + 1
    @definitions = []
  end

  def self.all()
    @@words
  end

  def save
    @@words.push(self)
  end

  def self.clear()
    @@words = []
  end

  def add_def(definition)
    @definitions.push(definition)
  end

  def self.find(id)
    @@words.each do |word|
      if word.word == id
        return word
      end
    end
  end
end
