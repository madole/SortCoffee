###
  Wikipedia - Cocktail Sort
  Cocktail sort, also known as bidirectional bubble sort, cocktail shaker sort,
  shaker sort (which can also refer to a variant of selection sort), ripple sort,
  shuffle sort,[1] or shuttle sort, is a variation of bubble sort that is both a
  stable sorting algorithm and a comparison sort. The algorithm differs from a bubble
  sort in that it sorts in both directions on each pass through the list. This sorting
  algorithm is only marginally more difficult to implement than a bubble sort, and solves
  the problem of turtles in bubble sorts. It provides only marginal performance improvements,
  and does not improve asymptotic performance; like the bubble sort, it is not of practical
  interest (insertion sort is preferred for simple sorts), though it finds some use in education.
###
cocktailSort = (items) ->
  begin = -1
  end = items.length-1
  swapped = true
  while swapped
    swapped = false
    begin++
    for i in [begin...end]
      if items[i] > items[i+1]
        items = swap(items, i, i+1)
        swapped = true
    break if !swapped

    swapped = false
    end--
    for j in [end...begin]
      if items[j] < items[j-1]
        items = swap(items, j, j-1)
        swapped = true
  console.log items

swap = (list, x, y) ->
  first = list[x]
  second = list[y]
  list[x] = second
  list[y] = first
  list

cocktailSort([2,34,6,2,1,5,7]) 
