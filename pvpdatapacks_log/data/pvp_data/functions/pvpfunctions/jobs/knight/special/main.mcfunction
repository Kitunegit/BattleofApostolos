#> pvp_data:pvpfunctions/jobs/knight/special/main
#
# 騎士特殊攻撃メイン処理
#
# @internal
#右クリ
    execute if predicate pvp_data:r_click/cmd3 if score @s special_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/knight/special/start

# 発動効果
    execute if entity @s[tag=Knight.Special] run function pvp_data:pvpfunctions/jobs/knight/special/time
    execute as @e[tag=Knight.Special_slash,type=marker] run function pvp_data:pvpfunctions/jobs/knight/special/marker
# 負荷軽減 
    execute if entity @e[tag=Knight.Special_damage] run function pvp_data:pvpfunctions/jobs/knight/special/damage
# CT終了時処理
    execute if score @s special_cool matches 0 run item modify entity @s hotbar.0 pvp_data:system/tool_damage/all_heel