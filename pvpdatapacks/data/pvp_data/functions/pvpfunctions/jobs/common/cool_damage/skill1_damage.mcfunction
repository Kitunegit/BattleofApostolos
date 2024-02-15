#> pvp_data:pvpfunctions/jobs/common/cool_damage/skill1_damage
#
# skill1CTダメージ
#
# @internal

# 次の準備
    scoreboard players operation @s skill_1_con = @s skill1.ct_data
# 回復させる
    item modify entity @s hotbar.1 pvp_data:system/tool_damage/heel_damage_25