quicksort = (items, left, right) ->
  pivot = 'unknown'
  if typeof items[left] != 'number' then left = 0
  if typeof items[right] != 'number' then right = items.length-1

  if left < right
    pivot = left + Math.ceil((right-left)*0.5)
    returnObj =  partition(items, pivot, left, right)
    pivot = returnObj.pivot
    items = returnObj.items
    process.nextTick ->
      quicksort(items, left, pivot-1)
    process.nextTick ->
      quicksort(items, pivot+1, right)

  console.log items

partition = (items, pivot, left, right) ->
  pivotValue = items[pivot]
  index = left

  items = swap(items, pivot, right)

  for i in [left...right]
    if items[i] < pivotValue
      index++
      items = swap(items, i, index)
  items = swap(items, left, index)
  {
    pivot: index,
    items: items
  }

swap = (list, x, y) ->
  first = list[x]
  second = list[y]
#  console.log 'swapping ' + first + ' and ' + second
  list[x] = second
  list[y] = first
  list

arrToBeSorted = [2,34,6,23,3,4,5,6433,553,5,7];
quicksort(arrToBeSorted, 0, arrToBeSorted.length)