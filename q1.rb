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

#
# ext = ExtendExample.new
# ext.sentence = "the extend example"
# puts ExtendExample.titleize(ext.sentence)

# ext.titleize("the extend example")
