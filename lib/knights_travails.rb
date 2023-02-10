require_relative 'knight.rb'

class KnightMoves

    attr_accessor :moves

    def initialize()
        @board = Array(0..7)
    end

    def possible_moves(current)
        #search for possible next moves of current position (ie. current = [0,0] : next = [1,2], [2,1])
        
    end

    def knight_moves(current, finish)
        moves = possible_moves(current)
        count = 0
        coordinates_queue = []

        while
    end
end