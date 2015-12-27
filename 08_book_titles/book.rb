class Book

  attr_reader :title

    def initialize(title=nil)
      @title = title && title.capitalize!
    end

    def title=(new_title)
        @title = new_title && new_title.capitalize!
        @conjunctions = ["and", "or", "for", "nor", "but", "yet", "so"]
        @articles = ["the", "a", "an"]
        @prepositions = ["in", "on", "at", "before", "under", "by", "of"]
        @words = @title.split
        @words.collect do |word|
            if @conjunctions.include?(word)==false && @articles.include?(word)==false && @prepositions.include?(word)==false
                word.capitalize!
            end
        end
        @title = @words.join(" ")
    end

end