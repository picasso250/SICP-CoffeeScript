SICP-CoffeeScript
=================

SICP CoffeeScript

1.1.6
----------

    abs = (x) -> if x > 0 then x else -x

1.1.7
-----------

    square = (x) -> x*x
    abs = (x) -> if x > 0 then x else -x
    
    average  = (x, y) -> (x+y)/2
    improve = (guess, x) -> average guess, x/guess
    good_enough = (guess, x) -> (abs ((square guess) - x)) < 0.00001
    sqrt_iter = (guess, x) ->
      if good_enough guess,x
        guess
      else
        sqrt_iter (improve guess, x), x
    sqrt = (x) -> sqrt_iter 1.0, x
    
    console.log sqrt 9
