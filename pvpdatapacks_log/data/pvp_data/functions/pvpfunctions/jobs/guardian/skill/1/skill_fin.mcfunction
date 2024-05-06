#> pvp_data:pvpfunctions/jobs/guardian/skill/1/skill_fin
#
# スキル1のCT終了処理です
#
# @internal

#守護者終了処理
execute at @s run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 0.5 
item modify entity @s hotbar.1 pvp_data:system/tool_damage/all_heel