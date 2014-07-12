###
  Wikipedia - GnomeSort
  Gnome sort (Stupid sort), originally proposed by Dr. Hamid Sarbazi-Azad
  (Professor of Computer Engineering at Sharif University of Technology) in
  2000 and called Stupid sort (not to be confused with Bogosort), and then
  later on described by Dick Grune and named "Gnome sort",[1] is a sorting
  algorithm which is similar to insertion sort, except that moving an element
  to its proper place is accomplished by a series of swaps, as in bubble sort.
  It is conceptually simple, requiring no nested loops.
###
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
