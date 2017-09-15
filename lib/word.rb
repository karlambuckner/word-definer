class Word
  @@words = []
  attr_reader(:word, :definition, :id)

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @id = @@words.length + 1
    @definition = []
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

  def add_def
    @definition.push(definition)
  end

  def self.find(identify)
    @@words.each do |word|
      if word.word == identify
        return word
      end
    end
  end
end
