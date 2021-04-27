def bubble_sort(arr)
  num_of_time_to_sort = arr.length - 1
  1.upto(arr.length - 1) do
    i = 0
    while i < num_of_time_to_sort
      if arr[i] > arr[i + 1]
        arr_i_cpy = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = arr_i_cpy
      end
      i += 1
    end
    num_of_time_to_sort -= 1
  end
  arr
end

def bubble_sort_by(arr)
  num_of_time_to_sort = arr.length - 1
  1.upto(arr.length - 1) do
    i = 0
    while i < num_of_time_to_sort
      sort_order = if block_given?
                     yield(arr[i], arr[i + 1])
                   else
                     arr[i] - arr[i + 1]
                   end
      if sort_order.positive?
        arr_i_cpy = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = arr_i_cpy
      end
      i += 1
    end
    num_of_time_to_sort -= 1
  end
  arr
end
p bubble_sort_by([7, 2, 0, 0, 10, 1, 2]) { |a, b| a <=> b }
