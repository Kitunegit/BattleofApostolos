#> concat:concat/test/single
# ユニットテスト
# @input
#   storage concat: test.unit
#     対象ユニット名
#   storage concat: test.args
#     ユニットに渡す引数
#   storage concat: test.expected
#     想定戻り値
# @output
#   storage concat: test.failure
#     テストに失敗した場合true
#   storage concat: test.actual
#     実際の返り値
# @internal
# @within
#   concat:concat/test/*

# 実行できない(評価失敗)→最初の値のまま(失敗)
# 実行できた(評価成功)→実行結果依存
data modify storage concat: test.failure set value 1b
data remove storage concat: test.actual
function concat:concat/test/single.macro with storage concat: test
