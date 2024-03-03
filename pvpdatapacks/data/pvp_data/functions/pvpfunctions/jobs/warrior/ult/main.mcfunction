#> pvp_data:pvpfunctions/jobs/warrior/ult/main
#
# 戦士ウルト常時実行処理
#
# @internal

# 発動処理
    execute if predicate pvp_data:r_click/cmd43 if score @s ult_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/warrior/ult/start
# スキル中処理
    execute if score @s ult_count matches 1.. run function pvp_data:pvpfunctions/jobs/warrior/ult/skill_tick
    execute as @s[tag=Warrior.Ult] at @s rotated as @s run tp @e[tag=warrior.ult_model,limit=1,sort=nearest] ^-1.5 ^ ^-1 ~ 0
    execute if entity @s[tag=Warrior.Ult_Jump,nbt={OnGround:1b}] run function pvp_data:pvpfunctions/jobs/warrior/ult/phase/landing
# 終了処理
    execute if score @s ult_cool matches 1 run function pvp_data:pvpfunctions/jobs/warrior/ult/skill_fin