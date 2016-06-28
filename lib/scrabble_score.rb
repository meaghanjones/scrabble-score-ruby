require('rspec')

class String
  define_method(:scrabble_score) do
    one_point = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"]
    three_points = ["b", "c", "m", "p"]
    four_points = ["f", "h", "v", "w", "y"]
    input_word_array = []
    score = 0
    self.downcase.split("").each do |letter|
      if one_point.include?(letter)
        score = score.+(1)
      elsif letter == "d" || letter == "g"
        score = score.+(2)
      elsif three_points.include?(letter)
        score = score.+(3)
      elsif four_points.include?(letter)
        score = score.+(4)
      elsif letter == "k"
        score = score.+(5)
      elsif letter == "j" || letter == "x"
        score = score.+(8)
      else letter == "q" || letter == "z"
        score = score.+(10)
      end
    end
    score
  end
end
