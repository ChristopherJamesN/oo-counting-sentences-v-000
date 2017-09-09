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
    count = self.split(/./)

    count.each_with_index do |i,index|
      if i == ""
        count.delete_at(index)
      end
    end

    count.length
  end
end
