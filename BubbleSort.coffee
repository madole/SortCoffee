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