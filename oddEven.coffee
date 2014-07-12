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
