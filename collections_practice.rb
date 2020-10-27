def sort_array_asc(arr)
    arr.sort
end

def sort_array_desc(arr)
    arr.sort do |a, b|
        if a == b
            0
        elsif a > b
            -1
        elsif a < b 
            1
        end
    end
end

def sort_array_char_count(arr)
    arr.sort do |a, b|
        a.length <=> b.length
    end
end

def swap_elements(arr)
    swap_elements_from_to(arr, 1, 2)
end

def swap_elements_from_to(arr, index, destination_index)
    arr[index], arr[destination_index] = arr[destination_index], arr[index]

    return arr
end

def reverse_array(arr)
    return arr.reverse()
end

def kesha_maker(str_arr)
    arr = []

    str_arr.each do |letter|
        letter[2] = "$"
        arr << letter
    end

    return arr
end

def find_a(arr)
    arr.select {|str| str.start_with?("a")}
end 

def sum_array(arr)
    arr.inject(:+)
end 

def add_s(arr)
    counter = 0

    arr.map do |word|
        counter += 1

        if counter != 2
            word << "s"
        else
            word = word
        end
    end
end