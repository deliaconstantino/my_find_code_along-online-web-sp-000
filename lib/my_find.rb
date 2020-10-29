require 'pry'

def my_find(collection)
  i = 0
  new_array = []

  while i < collection.length
    if yield(collection[i])
      new_array << collection[i]
      if new_array.length > 0
        return new_array.first
      else
        return nil
      end
    end
    i += 1
  end



end

#using a while loop, check/find elements that match a certain condition.
#return those that match as a new array and return nil if none of the org array match the condition
#use yield block to check condition
