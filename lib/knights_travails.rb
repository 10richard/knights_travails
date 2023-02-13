class Knight

    attr_accessor :position, :parent

    POSSIBLEMOVES = [[-2, -1], [-1, -2], [-2, 1], [-1, 2], 
                        [1, 2], [2, 1], [2, -1], [1, -2]].freeze

    @@history = []

    def initialize(position, parent)
        @position = position
        @parent = parent
        @@history.push(position)
    end

    def move_knight
        POSSIBLEMOVES.map { |possible_move| [position[0] + possible_move[0], position[1] + possible_move[1]]}
                     .select { |p| Knight.valid_pos?(p)}
                     .reject { |p| @@history.include?(p)}
                     .map { |p| Knight.new(p, self)}
    end

    def self.valid_pos?(position)
        position[0].between?(0, 8) && position[1].between?(0, 8)
    end
end