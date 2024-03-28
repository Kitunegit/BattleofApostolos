#> tak_utils:multiply_rot_by_random/generate
#
# @input
#   args
#       min: int
#       max: int
#
# @within function tak_utils:multiply_rot_by_random/

# マクロで代入
    $execute store result storage tak_utils temporary.x int 1 run random value $(min)..$(max)

    $execute store result storage tak_utils temporary.y int 1 run random value $(min)..$(max)
