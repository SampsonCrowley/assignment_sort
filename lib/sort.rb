def insertion_sort(arr)
  arr = arr.dup
  sorted = 0
  begin

    idx = sorted

    until idx == 0

      if arr[idx] < arr[idx - 1]

        arr[idx - 1], arr[idx] = arr[idx], arr[idx - 1]
        idx -= 1

      else
        break
      end

    end

    sorted += 1

  end until sorted == arr.length
  arr
end

def bubble_sort(input)
  arr = input.dup

  begin

    idx = 1
    swapped = false

    begin

      if arr[idx] < arr[idx-1]

        arr[idx - 1], arr[idx] = arr[idx], arr[idx - 1]
        swapped = true

      end

      idx += 1

    end until idx == arr.length

  end until !swapped

  arr
end

def merge_sort(arr)
  arr = arr.dup
  return arr if arr.length == 1

  split_idx = arr.length/2

  arr_left = arr[0...split_idx]
  arr_right = arr[split_idx..-1]

  merge_sort(arr_left, arr_right)

end

def merge(left_arr, right_arr)
  left, right = left_arr.dup, right_arr.dup
  merged = []

  while !left.empty? && !right.empty?
    if left[0] <= right[0]
      merged << left.shift
    else
      merged << right.shift
    end
  end

  merged << left << right
  merged.flatten
end