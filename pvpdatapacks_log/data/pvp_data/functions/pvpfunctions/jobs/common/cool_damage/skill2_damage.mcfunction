#> pvp_data:pvpfunctions/jobs/common/cool_damage/skill2_damage
#
# skill2CTダメージ
#
# @internal

# 次の準備
    scoreboard players operation @s skill_2_con = @s skill2.ct_data
# 回復させる
    item modify entity @s hotbar.2 pvp_data:system/tool_damage/heel_damage_25