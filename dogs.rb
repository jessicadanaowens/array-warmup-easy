require_relative "testing_library"

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]
another_dog_array = ["Fido"]

def how_many_dogs(dogs)
  dogs.length

end

def how_many_dogs(another_dog_array)
  another_dog_array.count
end

def name_lengths(dogs)
  # loop through each dog
  # count how long the name is
  # return a new array with the length of each name
  dogs.map {|dog|
    dog.length
  }

end

def reverse_dog_names(dogs)
  dogs.map do |dog|
    dog.reverse
  end

end

def first_three_dogs_with_each(dogs)
  counter = 0
  first_three_dogs = []
  dogs.each do |dog|
    if counter == 3
      return first_three_dogs
    end

    first_three_dogs.push(dog)

    counter = counter + 1
  end

end

def first_three_dogs_without_each(dogs)
  dogs[0..2]
end


def reverse_case_dog_names(dogs)
  dogs.map { |dog| dog.swapcase}

end

def sum_of_all_dog_name_lengths(dogs)
  dogs.inject(0) {|x, y| x + y.length}
end

def dogs_with_long_names(dogs)
  dogs.map {|x| x.length > 4}
end

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80

check("how_many_dogs", how_many_dogs(dogs) == 6)
check("how many dogs", how_many_dogs(another_dog_array) == 1)

            puts name_lengths(dogs)
check("name_lengths", name_lengths(dogs) == [4, 8, 4, 6, 4, 7])
check("reverse_dog_names", reverse_dog_names(dogs) == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
check("first_three_dogs_with_each", first_three_dogs_with_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("first_three_dogs_without_each", first_three_dogs_without_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("reverse_case_dog_names", reverse_case_dog_names(dogs) == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs) == 33)
check("dogs_with_long_names", dogs_with_long_names(dogs) == [false, true, false, true, false, true])

