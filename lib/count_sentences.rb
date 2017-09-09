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
    count = self.split(".")

    count.each do |i|
      count.push(i.split("?"))
    end

    count.each do |i|
      count.push(i.split("!"))
    end

    count.each_with_index do |i,index|
      if i == ""
        count.delete_at(index)
      end
    end

    count.length

    binding.pry
  end
end

"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences
