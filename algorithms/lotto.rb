#
# 로또의 최고 순위와 최저 순위
#

# Try1 - 정확성 100
LOTTO_WIN_RULE_MAP = {
    0 => 6,
    1 => 6,
    2 => 5,
    3 => 4,
    4 => 3,
    5 => 2,
    6 => 1
}
def solution(lottos, win_nums)
    same_numbers = lottos & win_nums
    unknown_numbers = lottos.select(&:zero?)

    result = [
        LOTTO_WIN_RULE_MAP[unknown_numbers.size + same_numbers.size],
        LOTTO_WIN_RULE_MAP[same_numbers.size]
    ]
end
