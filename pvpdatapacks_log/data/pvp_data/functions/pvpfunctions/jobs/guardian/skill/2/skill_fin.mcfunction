#> pvp_data:pvpfunctions/jobs/guardian/skill/2/skill_fin
#
# スキル2の終了処理です
#
# @internal

# 守護者終了処理
    execute at @s run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 0.5 
    item modify entity @s hotbar.2 pvp_data:system/tool_damage/all_heel