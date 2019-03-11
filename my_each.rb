def my_collect(array)
  output_array = []
  i = 0
  while i < array.length
    yield output_array.push(array[i])[i]
    i += 1
  end
  output_array
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end