#> concat:concat/test/single.macro
# ユニットテスト
# @input
#   macro unit
#     対象ユニット名
#   storage concat: test.args
#     ユニットに渡す引数
#   storage concat: test.expected
#     想定戻り値
# @output
#   storage concat: test.failure
#     評価に成功したうえでテストに失敗した場合
#   storage concat: test.actual
#     実際の返り値
# @internal
# @within
#   concat:concat/test/*

data remove storage concat: test.failure
$data modify storage concat: $(unit) set from storage concat: test.args
$function concat:concat/$(unit)/
$data modify storage concat: test.actual set from storage concat: $(unit)
$execute store result storage concat: test.failure byte 1 run data modify storage concat: $(unit) merge from storage concat: test.expected
$data remove storage concat: $(unit)
