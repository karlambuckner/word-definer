class Definition
  @@definition = []
  attr_accessor(:definition)

  def initialize (definition)
    @definition = definition
  end

  def self.all
    @@definition
  end

  def save
    @@definition.push(self)
  end

  def self.clear
    @@definition = []
  end
end
