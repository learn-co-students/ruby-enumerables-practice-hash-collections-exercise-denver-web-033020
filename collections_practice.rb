require 'pry'

def begins_with_r array
  array.all? { |string| string[0] == "r" }
end

def contain_a array
  array.select do |string| string
    string.chars.any? { |char| char == "a"  }
  end
end

def first_wa array
  array.select { |word| word.to_s.chars[0] == "w" && word.to_s.chars[1] == "a" }[0]
end

def remove_non_strings array
  array.select do |element|
    element.class == "".class
  end
end

def count_elements array
    my_hash = {}
    array.each do |key, value|
      if my_hash[key] == nil
        my_hash[key] = 1
      else
        my_hash[key] += 1
      end
    end
    output = []
    my_hash.each do |key, value|
      output << {:name => key[:name], :count => my_hash[key] }
    end
    output
  end
  
  def merge_data(array1, array2)
    output = []
    array1.each_with_index do |value, index |
      new_hash = {}
      array1[index].each {|k,v| new_hash[k] = v }
      array2[index].each {|k,v| new_hash[k] = v }
      output << new_hash
    end
    output
  end
  
  
  def find_cool data
    data.select { |hash| hash[:temperature] == "cool"}
  end
  
  def organize_campuses data
    locations = data.map {|key, value| value[:location]}.uniq
    my_hash = {}
    locations.each { |loc|
      matched_schools = data.select {|key, value|
        key if value[:location] == loc
      }
      my_hash[loc] = matched_schools.keys
    }
    my_hash
  end