#> pvp_data:pvpfunctions/jobs/warrior/special/skill_fin
#
# 戦士特殊攻撃CT終了処理
#
# @internal

# 演出
    execute at @s run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 0.5 
# 耐久値調整
    item modify entity @s hotbar.0 pvp_data:system/tool_damage/all_heel