def bubble_sort(arr)
	num_of_time_to_sort = arr.length - 1
	1.upto(arr.length - 1)  
	do
		i = 0
		while i < num_of_time_to_sort 					
			if arr[i] > arr[i + 1] 
				arr[i] = arr[i + 1]
				arr[1] 
			end
			
		end
		num_of_time_to_sort -= 1
	end  
end


