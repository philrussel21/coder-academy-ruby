
def remove_adjacent_duplicates(input)
  arr = input.chars
  str_new = ''
  input.length.times do |i|
    str_new += arr[i] if arr[i] != arr[i+1]
  end
  str_new
end
