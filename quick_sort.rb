def quick_sort(arr)
  return arr if arr.length <= 1

  pivot = arr.delete_at(arr.length / 2)
  left, right = arr.partition { |element| element < pivot }

  quick_sort(left) + [pivot] + quick_sort(right)
end
