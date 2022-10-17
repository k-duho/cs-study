# 피보나치 수열을 반환하는 알고리즘.
# length는 원하는 피보나치 수열의 길이

def fib(length, fibonacci_arr: nil)
  fibonacci_arr ||= [1]

  if fibonacci_arr.size < length
    last_idx = fibonacci_arr.size - 1
    plus_numbers = fibonacci_arr[last_idx - 1..last_idx]
    fibonacci_arr << plus_numbers.sum
    last_idx = length - 1
    fib(length, fibonacci_arr: fibonacci_arr)
  end
  fibonacci_arr
end

# メモ化
def fib(length)
  @fibonacci_arr ||= [1]

  if @fibonacci_arr.size < length
    last_idx = @fibonacci_arr.size - 1
    plus_numbers = @fibonacci_arr[last_idx - 1..last_idx]
    @fibonacci_arr << plus_numbers.sum
    last_idx = length - 1
    fib(length)
  end
  @fibonacci_arr
end

