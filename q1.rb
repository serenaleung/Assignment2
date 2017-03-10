# Question 1
# Implement the following code in Ruby: Create a module called HelperMethods that include a method called titleize that does the following: it takes in a string and returns the string back after capitalizing each word in that string. For example, if you pass to the method a string "hello world" you should get back "Hello World". The methods should not capitalize the following words: in, the, of, and, or, from. Then write a piece of code to demonstrate the difference between include and extend in using Ruby modules with classes to include methods. Make sure to demonstrate calling the titleize methods with your code.

module HelperMethods

  def titleize(sentence)
    # puts "Sentence please"
    # sentence = gets.chomp
    words = sentence.split(" ")
      final = []
      words.each_with_index  do |word,index|
        if index == 0 || word != "in" && word != "the" && word != "of" && word != "and" && word != "or" && word != "from"
          final << word.capitalize
        else
          final << word
        end
      end
      final.join(" ")

  end
end

class IncludeExample
  attr_accessor :sentence
  include HelperMethods
end

class ExtendExample
  attr_accessor :sentence
  extend HelperMethods

end

inc = IncludeExample.new
inc.sentence = "the include example"
p inc.titleize(inc.sentence)
#
ext = ExtendExample.new
ext.sentence = "the extend example"
p ExtendExample.titleize(ext.sentence)
