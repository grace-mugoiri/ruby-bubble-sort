def bubble_sort(array)
    num = array.length
    sorted = true
    while sorted do
        sorted = false
        (num - 1).times do |iterate|
            if array[iterate] > array[iterate + 1]
                array[iterate], array[iterate + 1] = array[iterate + 1], array[iterate]
        sorted = true
            end
        end
    end
    array
end
puts bubble_sort([4, 3, 78, 2, 0, 2])