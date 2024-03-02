#> pvp_data:pvpfunctions/jobs/warrior/ult/main
#
# 戦士ウルト常時実行処理
#
# @internal

# 発動処理
    execute if predicate pvp_data:r_click/cmd43 if score @s ult_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/warrior/ult/skill_start
# スキル中処理
    execute if score @s ult_count matches 1.. run function pvp_data:pvpfunctions/jobs/warrior/ult/skill_tick
    execute if entity @s[tag=warrior.ult_jump,nbt={OnGround:1b}] run function pvp_data:pvpfunctions/jobs/warrior/ult/fall_ground
# 終了処理
    execute if score @s ult_cool matches 1 run function pvp_data:pvpfunctions/jobs/warrior/ult/skill_fin