#> pvp_data:pvpfunctions/systems/job_system/damage/to/entity
#
# @input
#   args
#       knockback_strength: double 横方向のノックバックの強さ
#
# @within function pvp_data:pvpfunctions/systems/job_system/damage/apply

#ベクトルを取得
    #declare tag damage.apply_vector Posがベクトルを示すエンティティが保持するタグ
    $execute at @s facing entity @e[tag=damage.apply_source,limit=1] feet rotated ~180 0 positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^$(knockback_strength) {Tags: ["damage.apply_vector"]}

#代入
    data modify entity @s Motion set from entity @e[tag=damage.apply_vector,limit=1] Pos

    #say @e[tag=damage.apply_target,limit=1]

    data modify entity @s Motion[1] set value 0.4d

#リセット
    kill @e[type=area_effect_cloud,tag=damage.apply_vector]
