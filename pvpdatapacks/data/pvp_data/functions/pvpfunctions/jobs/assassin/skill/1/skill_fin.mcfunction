#> pvp_data:pvpfunctions/jobs/assassin/skill/1/skill_fin
#
# 暗殺者 スキル1 CT終了処理
#
# @internal

# CT終了処理
    execute at @s run playsound ui.button.click player @s ~ ~ ~ 0.5 1
    item modify entity @s hotbar.1 pvp_data:system/tool_damage/all_heel
