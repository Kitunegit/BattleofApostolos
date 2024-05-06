#> pvp_data:pvpfunctions/jobs/warrior/ult/phase/fall
#
# 戦士ウルト落下速度向上処理
#
# @internal

# 落す
    scoreboard players set $strength delta.api.launch 15000
    execute rotated ~ 90 run function delta:api/launch_looking
# タグ付与
    tag @s add Warrior.Ult_Jump