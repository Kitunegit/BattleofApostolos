#> tak_utils:multiply_rot_by_random/multiply
#
# @input
#   args
#       x: int
#       y: int
#       command: string
#
# @within function tak_utils:multiply_rot_by_random/

# マクロで代入
    $execute rotated ~$(x) ~$(y) run $(command)
