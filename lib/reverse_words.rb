require 'pry'

# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  return my_words if (my_words == nil || my_words.length < 2)
  #set last space to first space
  #go through, when hit a space set last space to i
  #reverse firstspace to lastspace
  first_space = 0
  last_space = 0
  i = 0

  while i < my_words.length
    if my_words[i] == " "
      first_space = last_space
      last_space = i - 1
      iterations = (last_space - first_space)/2 + 1
      iterations.times do |t|
        temp = my_words[first_space + t]
        my_words[first_space + t] = my_words[last_space - t]
        my_words[last_space - t] = temp
      end
    end
    i += 1
  end

  first_space = last_space
  last_space = my_words.length - 1
  iterations = (last_space - first_space)/2 + 1
  iterations.times do |t|
    temp = my_words[first_space + t]
    my_words[first_space + t] = my_words[last_space - t]
    my_words[last_space - t] = temp
  end

  return my_words
  raise NotImplementedError
end
