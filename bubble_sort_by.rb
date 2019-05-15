def bubble_sort_by(array)
    n = array.length - 2
    loop do
        sorted = true
        (0..n).each do |i|
            if yield(array[i], array[i + 1]) > 0
            array[i], array[i + 1] = array[i + 1], array[i]
            sorted = false
            end
        end
        break if sorted
        n -= 1
    end
    puts array
 end

print bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length }


