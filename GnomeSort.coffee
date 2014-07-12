gnomeSort = (items) ->
  pos = 1
  while pos < items.length
    if items[pos] >= items[pos-1]
      pos++
    else
      swap(items, pos, pos-1)
      if pos > 1 then pos--

  console.log items


swap = (list, x, y) ->
  first = list[x]
  second = list[y]
  list[x] = second
  list[y] = first
  list

gnomeSort([2,34,6,2,1,5,7])
