#> pvp_data:pvpfunctions/systems/job_system/damage/knockback/entity
#
# @input
#   args
#       horizontal: double 横方向のノックバックの強さ
#       vertical: double 縦方向のノックバックの強さ
#
# @within function pvp_data:pvpfunctions/systems/job_system/damage/apply

#ベクトルを取得
    #declare tag damage.apply_vector Posがベクトルを示すエンティティが保持するタグ
    $execute at @s facing entity @e[tag=damage.apply_source,limit=1] feet rotated ~180 0 positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^$(horizontal) {Tags: ["damage.apply_vector"]}

#代入
    data modify entity @s Motion set from entity @e[tag=damage.apply_vector,limit=1] Pos

    $data modify entity @s Motion[1] set value $(vertical)d

#リセット
    kill @e[type=area_effect_cloud,tag=damage.apply_vector]
