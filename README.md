# Fractions for Humans

Sometimes computers are impractically accurate. For example, once you start doing fancy operations with floating-point numbers, you lose end-readability.

The point of these 30 lines of code is to convert a floating-point number to the closest fraction with an acceptable base. 

An application might be in baking, where you may want to specify only bases in [2, 3, 4, 6, 8] for recipes. That is the default set of acceptable bases, but change it to what you want or pass in an array. 

installation
------------

Download the __human_fractions.rb__ file, copy it into your project, and require it. For instance if it is in the same folder as the code you are using it with:

```ruby
require './human_fractions'
```

usage
-----



###### Float#to_fraction

```ruby

require './human_fractions'

puts (4.99999 / 7.99998587598).to_fraction
# => 5/8
puts (-1.0034 / 3.2).to_fraction [3]
# => -1/3

```

###### Rational#to_fraction

```ruby

require './human_fractions'

puts Rational(26, 100).to_fraction
# => 1/4
puts Rational(26, 100).to_fraction [2, 3, 6]
# => 1/3

```

###### Rational#round_to_nearest

```ruby

require './human_fractions'

puts Rational(7, 16).round_to_nearest '1/2'
# => 1/2
puts '7/16'.to_r.round_to_nearest 0.5
# => 1/2
puts Rational(7, 16).round_to_nearest Rational(1, 2)
# => 1/2

```


license
-------

Released with no strings attached. 

> Specifically:
>
> You may pretend that you wrote it, including bragging rights should the opportunity come up. 
>
> You may not sue me for any reason related to this code whatsoever. 

