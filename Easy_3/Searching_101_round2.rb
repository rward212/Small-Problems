TENSE_HASH = {1=>"st", 2=>"nd", 3=>"rd"}
list = []

def prompt_user(array, value)
  if TENSE_HASH.has_key?(value)
    puts "Enter the #{value.to_s}#{hash[value]} number"
  else
    puts "Enter the #{value.to_s}th number"
  end
end

def get_numbers(array)
  1.upto(6) do |number|

    prompt_user(array, number)

    response = gets.chomp.to_i
    array << response
  end
end

def report_duplicates(hash)
  if hash[0..-2].include?(hash.last)
    puts "The number #{hash.last} appears in #{hash[0..-2]}"
  else
    puts "The number #{hash.last} does not appear in #{hash[0..-2]}"
  end
end

get_numbers(list)
report_duplicates(list)
