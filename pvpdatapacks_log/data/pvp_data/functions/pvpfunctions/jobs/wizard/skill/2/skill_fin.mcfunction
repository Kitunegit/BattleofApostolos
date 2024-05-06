#> pvp_data:pvpfunctions/jobs/wizard/skill/2/skill_fin
#
# 魔導士 スキル2 CT終了処理
#
# @internal

# CT終了処理
    execute at @s run playsound ui.button.click player @s ~ ~ ~ 0.5 1
    item modify entity @s hotbar.2 pvp_data:system/tool_damage/all_heel