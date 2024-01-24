# Your code here

@board = "
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

def boardtests
  @board[4+90] = "X"
  @board[98] ="X"
  @board[188] = "O"
end

#boardtests
#puts @board

#instantiations
@xcord = 0
@ycord = 0
@horizontal = 0

@counter = 6

def inverseCounter
  @inverseCounter = 10 - @counter
end

inverseCounter

def selector
  @horizontal = rand(2)
end

def checker  
  if (@horizontal == 1)
    @xcord = rand(1..@counter)
    @ycord = rand(1..10)
  else 
    @xcord = rand(1..10)
    @ycord = rand(1..@counter)
  end
end

def placer(x)
  if (@horizontal == 1)    
    for i in 0..@inverseCounter do
      if @board[((@xcord + i) * 4) + (@ycord * 90)] != " "
        return
      end
    end

    for i in 0..@inverseCounter do
      @board[((@xcord + i) * 4) + (@ycord * 90)] = x  
    end

  else
    for i in 0..@inverseCounter do
      if @board[((@xcord) * 4) + ((@ycord + i) * 90)] != " "
        return
      end
    end

    for i in 0..@inverseCounter do
      @board[((@xcord) * 4) + ((@ycord + i)* 90)] = x
    end
  end
  @counter = @counter + 1
  inverseCounter 
end

#saw 2 4's, so it returned on 3, counter didn't increment, inv didn't decrement, but doit's argument did increment

def doit(y)
  selector
  checker
  placer(y)
end

for i in 0..4 do
  doit(i.to_s)
end

#@board[940] = "O"
puts @board



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

=begin 
until @xcord + @inverseCounter == 11 do  
  @board[((@xcord + 0) * 4) + (@ycord * 90)] = "O"
  @board[((@xcord + 1) * 4) + (@ycord * 90)] = "O"
  @board[((@xcord + 2) * 4) + (@ycord * 90)] = "O"
  @board[((@xcord + 3) * 4) + (@ycord * 90)] = "O"
  @board[((@xcord + 4) * 4) + (@ycord * 90)] = "O"
  @counter = @counter + 1
end
=end