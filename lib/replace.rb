require('pry')

class String
  define_method(:find_and_replace) do |replace_word, new_word|
    words = self.split()
    words.each() do |word|
      if word == replace_word
        word.gsub!(replace_word, new_word)
      end
    end
    words.join(" ")
  end
end
