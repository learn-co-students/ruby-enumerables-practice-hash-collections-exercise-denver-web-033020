# your code goes here
require 'pp'


def begins_with_r arr
  arr.all? { |e| e[0] == "r" }
end

def contain_a arr
  arr.select do |word|
    word.chars.any? { |char| char == "a"  }
  end
end

def first_wa arr
  arr.select { |word| word.to_s.chars[0] == "w" && word.to_s.chars[1] == "a" }[0]
end

def remove_non_strings arr
  arr.select { |x| x.class == "".class }
end

def count_elements arr
  my_hash = {}
  arr.each do |key, value|
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

def merge_data(arr1, arr2)
  output = []
  arr1.each_with_index do |value, index |
    new_hash = {}
    arr1[index].each {|k,v| new_hash[k] = v }
    arr2[index].each {|k,v| new_hash[k] = v }
    output << new_hash
  end
  output
end


def find_cool data
  data.select { |hash| hash[:temperature] == "cool"}
end

def organize_campuses data
  locations = data.map {|k,v| v[:location]}.uniq
  my_hash = {}
  locations.each { |loc|
    matched_schools = data.select {|k,v|
      k if v[:location] == loc
    }
    my_hash[loc] = matched_schools.keys
  }
  my_hash
end
