#> pvp_data:pvpfunctions/jobs/knight/skill/1/act_fin
#
# 騎士スキル1バフ終了処理
#
# @within function pvp_data:pvpfunctions/jobs/knight/skill/1/act

#終了演出
    execute at @s run playsound ui.button.click player @s ~ ~ ~ 0.5
    item modify entity @s hotbar.1 pvp_data:system/tool_damage/all_heel