require('rspec')

class String
  define_method(:scrabble_score) do
    one_point = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"]
    two_points = ["d", "g"]
    three_points = ["b", "c", "m", "p"]
    four_points = ["f", "h", "v", "w", "y"]
    eight_points = ["j", "x"]
    ten_points = ["q", "z"]
    input_word_array = []
    score = 0
    self.split("").each do |letter|
      if one_point.include?(letter)
        score = score.+(1)
      elsif two_points.include?(letter)
        score = score.+(2)
      elsif three_points.include?(letter)
        score = score.+(3)
      elsif four_points.include?(letter)
        score = score.+(4)
      elsif letter == "k"
        score = score.+(5)
      elsif eight_points.include?(letter)
        score = score.+(8)
      else ten_points.include?(letter)
        score = score.+(10)
      end
    end
    score
  end
end
