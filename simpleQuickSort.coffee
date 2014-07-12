###
  Wikipedia - Quick Sort
  Quicksort, or partition-exchange sort, is a sorting algorithm developed by Tony Hoare
  that, on average, makes O(n log n) comparisons to sort n items. In the worst case, it
  makes O(n2) comparisons, though this behavior is rare. Quicksort is often faster in practice
  than other O(n log n) algorithms. Additionally, quicksort's sequential and localized memory
  references work well with a cache. Quicksort is a comparison sort and, in efficient implementations,
  is not a stable sort. Quicksort can be implemented with an in-place partitioning algorithm, so the
  entire sort can be done with only O(log n) additional space used by the stack during the recursion.
###

quickSort = ([head,tail...]) ->
  return [] if !head
  sortedArray = quickSort(i for i in tail when i <= head)
  biggerSortedArray = quickSort(i for i in tail when i > head)
  sortedArray.concat([head]).concat(biggerSortedArray)

console.log quickSort([2,111,3433,31,2,1,4,55,33,22])

