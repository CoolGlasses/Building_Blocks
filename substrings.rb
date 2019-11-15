dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)

  finally = Hash.new(0)
  strings_array = []

  words.each_char.with_index do |char1, i|
    still_building = true
    temp_string = char1.downcase
    strings_array << temp_string
  
    while still_building
    
      words.each_char.with_index do |char2, k|
      
        if i < k && k <= words.length - 1
          temp_string += char2.downcase
          strings_array << temp_string
        elsif k = words.length
          still_building = false
        end
    
      end
  
    end

  end

  strings_array.each do |substring|
    if dictionary.include?(substring)
      finally[substring] += 1
    end
  end

  return finally
end