#> pvp_data:pvpfunctions/jobs/archer/passive/jump
#
# ジャンプ関数
#
# @internal

# 脚力取得
    $scoreboard players set $strength delta.api.launch $(power)
# 飛ばす
    $execute at @s rotated ~ $(angle) run function delta:api/launch_looking
# 音声
    execute at @s run playsound minecraft:entity.breeze.jump player @a[distance=..5] ~ ~ ~ 1 0.5
# パーティクル
    $execute at @s run particle explosion $(particle_position)
    $execute at @s run particle dust 0 0.675 0 4 $(particle_position) 1 1 1 1 15
# 確率で矢を消費
    execute if predicate pvp_data:10_rng run scoreboard players remove @s passive_count 1