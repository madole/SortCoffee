###
  Wikipedia - Odd Even sort
  An odd–even sort or odd–even transposition sort (also known as brick sort is a relatively simple sorting algorithm,
  developed originally for use on parallel processors with local interconnections. It is a comparison sort related
  to bubble sort, with which it shares many characteristics. It functions by comparing all (odd, even)-indexed pairs
  of adjacent elements in the list and, if a pair is in the wrong order (the first is larger than the second)
  the elements are switched. The next step repeats this for (even, odd)-indexed pairs (of adjacent elements).
  Then it alternates between (odd, even) and (even, odd) steps until the list is sorted.
###
oddEvenSort = (items) ->
  sorted = false
  while !sorted
    sorted = true
    for i in [1...items.length] by 2
      if items[i] > items[i+1]
        swap(items, i, i+1)
        sorted = false

    for i in [0...items.length] by 2
      if items[i] > items[i+1]
        swap(items, i, i+1)
        sorted = false
  console.log items

swap = (list, x, y) ->
  first = list[x]
  second = list[y]
  list[x] = second
  list[y] = first
  list

oddEvenSort([2,34,6,2,1,5,7])
