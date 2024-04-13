def display_list(list)
  list.each_with_index do |(item, purchased), index|
    x_mark =  purchased ? "X" : " "
    puts "#{index + 1} - [#{x_mark}] #{item}"
  end
end
