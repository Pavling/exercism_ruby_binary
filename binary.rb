class Binary
    def initialize(binary)
      @binary = binary unless binary.to_s.match(/[^10]/)
    end

    def to_decimal
      decimal = 0
      @binary.to_s.reverse.chars.each_with_index do |char, index|
        decimal += 2**index if char == '1'
      end
      decimal
    end

end