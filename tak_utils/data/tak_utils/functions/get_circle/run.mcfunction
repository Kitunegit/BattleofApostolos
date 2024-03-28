#> tak_utils:get_circle/run
#
# @input
#   args
#       callback: string コールバック関数
#       x: double x座標
#       y: double y座標
#       z: double z座標
#
# @within function tak_utils:get_circle/

# コールバック実行
    $execute positioned $(x) $(y) $(z) run function $(callback)
