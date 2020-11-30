n = 15

def solution(n, c, m)

  unopened_bars_amount = n/c
  total_bars = unopened_bars_amount

  total_wrappers = unopened_bars_amount

  while(true)


    free_amount = total_wrappers / m
    the_rest_wrappers = total_wrappers % m
    total_wrappers = the_rest_wrappers + free_amount

    total_bars += free_amount

    break if total_wrappers < m && free_amount == 0
  end

  total_bars
end

total_money = 6
cost = 2
total_wrappers_turn_in = 2

p solution(total_money, cost, total_wrappers_turn_in)
