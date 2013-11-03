

class Book
    

    def title=(title)
       @title = title
    end

    def title
        @title.capitalize!
        lowercase_words = ["a", "an", "the", "and", "in", "of"]
      return @title.split.map { |word| 
            if (lowercase_words.include?(word))
                word
            else
                word.capitalize
            end   
                }.join(" ")
    end
end

