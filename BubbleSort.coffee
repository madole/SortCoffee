###
  Wikipedia - Bubble Sort
  Bubble sort, sometimes referred to as sinking sort, is a simple sorting
  algorithm that works by repeatedly stepping through the list to be sorted,
  comparing each pair of adjacent items and swapping them if they are in the
  wrong order. The pass through the list is repeated until no swaps are needed,
  which indicates that the list is sorted. The algorithm gets its name from the
  way smaller elements "bubble" to the top of the list. Because it only uses
  comparisons to operate on elements, it is a comparison sort. Although the algorithm
  is simple, most of the other sorting algorithms are more efficient for large lists.
###
  bubbleSort = (listOfItems) ->
  n = listOfItems.length
  while true
    newn=0
    i=1
    while i < n
      if listOfItems[i-1] > listOfItems[i]
        listOfItems = swap(listOfItems, i-1, i)
        newn = i
      i++
    n=newn
    break if n==0
  console.log listOfItems

swap = (list, x, y) ->
  first = list[x]
  second = list[y]
  list[x] = second
  list[y] = first
  list

bubbleSort([2,34,6,2,1,5,7])