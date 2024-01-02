# Your code here

@board4 = "
     A   B   C   D   E   F   G   H   I   J
   +---------------------------------------+
 1 |   |   |   |   |   |   |   |   |   |   |
   |---|---|---|---|---|---|---|---|---|---|
 2 |   |   |   |   |   |   |   |   |   |   |
   |---|---|---|---|---|---|---|---|---|---|
 3 |   |   |   |   |   |   |   |   |   |   |
   |---|---|---|---|---|---|---|---|---|---|
 4 |   |   |   |   |   |   |   |   |   |   |
   |---|---|---|---|---|---|---|---|---|---|
 5 |   |   |   |   |   |   |   |   |   |   |
   |---|---|---|---|---|---|---|---|---|---|
 6 |   |   |   |   |   |   |   |   |   |   |
   |---|---|---|---|---|---|---|---|---|---|
 7 |   |   |   |   |   |   |   |   |   |   |
   |---|---|---|---|---|---|---|---|---|---|
 8 |   |   |   |   |   |   |   |   |   |   |
   |---|---|---|---|---|---|---|---|---|---|
 9 |   |   |   |   |   |   |   |   |   |   |
   |---|---|---|---|---|---|---|---|---|---|
10 |   |   |   |   |   |   |   |   |   |   |
   +---------------------------------------+
"
@board4[4+90] = "X"
@board4[98] ="X"
@board4[188] = "O"

puts @board4

@counter = 6
@inverseCounter = 10 - @counter

def selector
  @horizontal = rand(2)
end

def checker  
  if (@horizontal == 1){
    @xcord = rand(1..@counter)
    @ycord = rand(1..10)
    } else {
    @xcord = rand(1..10)
    @ycord = rand(1..@counter)
  }
end

def placer
  until @xcord + inverseCounter == 11 do  
    @board4[(@xcord * 4) + (@ycord * 90)] = "O"
    @board4[((@xcord + 1) * 4) + (@ycord * 90)] = "O"
    @board4[((@xcord + 2) * 4) + (@ycord * 90)] = "O"
    @board4[((@xcord + 3) * 4) + (@ycord * 90)] = "O"
    @board4[((@xcord + 4) * 4) + (@ycord * 90)] = "O"
    @counter++
  end
end

placer
placer
placer
@board4[940] = "O"
puts @board4



=begin puts (@board4[6])
puts (@board4[10]) #+4
puts (@board4[14]) #+4
puts (@board4[18]) #+4
puts (@board4[22]) #+4
puts (@board4[26]) #+4
puts (@board4[30]) #+4
puts (@board4[34]) #+4
puts (@board4[38]) #+4
puts (@board4[42]) #+4 final
puts (@board4[90]) #+4
puts (@board4[180])
puts (@board4[270])
puts (@board4[360])
puts (@board4[450])
puts (@board4[540])
=end