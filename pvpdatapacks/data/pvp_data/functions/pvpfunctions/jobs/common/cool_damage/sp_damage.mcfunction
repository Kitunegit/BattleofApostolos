#> pvp_data:pvpfunctions/jobs/common/cool_damage/sp_damage
#
# CTダメージ
#
# @internal
# 次の準備
    scoreboard players operation @s special_con = @s special.ct_data
# 回復させる
    item modify entity @s hotbar.0 pvp_data:system/tool_damage/heel_damage_5