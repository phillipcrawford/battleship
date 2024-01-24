def placer
    if (true)    
      for i in 1..5 do
        if true
          puts "z"
          return
        end
        puts "a"
      end
      puts "b"
    end
    puts "c"
end

placer

class Point
    def initialize(x: , y:)
      @x, @y = x, y
    end
  end
  point = Point.new(x: 10, y: 20)