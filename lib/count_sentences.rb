require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count = self.split('.')
    count.each_with_index do |i,index|
      if i == ""
        count = count[index].remove
      end
    end
    count.length
    binding.pry
  end
end

"This is a sentence.. So is this? So is this.".count_sentences
