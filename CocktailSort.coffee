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
