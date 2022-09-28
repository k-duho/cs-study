## JadenCase 문자열 만들기
  ## - 正確性94.4
CHAR_FOR_FILL_BLANK = "%"

def solution(s)
  blank_filled_s = s.gsub(/\s/, CHAR_FOR_FILL_BLANK)
  blank_filled_s.split(CHAR_FOR_FILL_BLANK).map do |string|
    next if string.empty?
    next string.downcase if string.match?(/[0-9]/)

    string.capitalize
  end.join(" ")
end
