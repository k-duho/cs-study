#
# JadenCase 문자열 만들기
#

# Try1 - 정확성 94.4
CHAR_FOR_FILL_BLANK = "%"

def solution(s)
  blank_filled_s = s.gsub(/\s/, CHAR_FOR_FILL_BLANK)
  blank_filled_s.split(CHAR_FOR_FILL_BLANK).map do |string|
    next if string.empty?
    next string.downcase if string.match?(/[0-9]/)

    string.capitalize
  end.join(" ")
end

# Try2 - 정확성 100
def solution(s)
    s.gsub(/[\S]{0,}/) do |matched_string|
        next matched_string if matched_string.empty?
        
        matched_string.capitalize
    end
end
