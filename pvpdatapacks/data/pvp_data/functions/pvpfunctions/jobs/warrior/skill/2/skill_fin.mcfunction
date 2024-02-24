#> pvp_data:pvpfunctions/jobs/warrior/skill/2/skill_fin
#
# 戦士スキル2CT終了処理
#
# @internal

# 演出
    execute at @s run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 0.5 
# 耐久値修繕
    item modify entity @s hotbar.2 pvp_data:system/tool_damage/all_heel