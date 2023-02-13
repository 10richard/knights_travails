require './lib/knights_travails.rb'

def display_moves(current, moves=[])
    begin
        moves.push(current.position)
        display_moves(current.parent, moves)
    rescue
        "You made it in #{moves.count - 1} moves!\nPath: #{moves.reverse}"
    end
end

def knight_moves(start, finish)
    queue =[]
    current = Knight.new(start, nil)
    until current.position == finish
        current.move_knight.each { |child| queue.push(child) }
        current = queue.shift
    end
    puts display_moves(current)
end

knight_moves([3,3], [4,3])