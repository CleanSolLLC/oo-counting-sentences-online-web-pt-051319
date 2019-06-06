require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    sentences = self.split(/\b[.|?|!](.*)/)
    #sentences = self.split(/\b[.|?|!]/) works 2 of 3 test cases plus most of 3rd test case
    #sentences = self.split(/[\W+]\s/) works 2 of 3 test cases
    binding.pry
    sentences.count
  end
end
