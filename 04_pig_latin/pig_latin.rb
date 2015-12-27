def translate(phrase)
    consonants = "bcdfghjklmnpqrstvwxz"
    cons_array = consonants.split(//)
    words = phrase.split
    words.collect! do |word|
        if cons_array.include?(word[0]) && cons_array.include?(word[1]) && cons_array.include?(word[2]) 
            word[3..-1] + word[0..2] + "ay"
        elsif cons_array.include?(word[0]) && cons_array.include?(word[1]) && word[0..2] != "squ"
            word[2..-1] + word[0..1] + "ay"
        elsif word[0..1] == "qu"
            word[2..-1] + "quay"
        elsif word[0..2] == "squ"
            word[3..-1] + "squay"
        elsif cons_array.include?(word[0])
            word[1..-1] + word[0] + "ay"
        else
            word + "ay"
        end       
    end
    s = words.join(" ")
end