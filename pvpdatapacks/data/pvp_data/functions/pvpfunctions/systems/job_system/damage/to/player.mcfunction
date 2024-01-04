#> pvp_data:pvpfunctions/systems/job_system/damage/to/player
#
# @input
#   args
#       knockback_strength: double 横方向のノックバックの強さ
#
# @within function pvp_data:pvpfunctions/systems/job_system/damage/apply

#ストレージに一時保存
    #declare storage temporary: double→10000倍intへの変換用一時データベース
    $data modify storage temporary: value set value $(knockback_strength)d

#scoreboardに10000倍して代入
    execute store result score $strength delta.api.launch run data get storage temporary: value 10000

#慣性リセット
    execute at @s run function pvp_data:pvpfunctions/systems/job_system/damage/technical/reset_motion

#吹き飛ばす
    execute at @s facing entity @e[tag=damage.apply_source,limit=1] feet rotated ~180 0 run function delta:api/launch_looking

    scoreboard players set $strength delta.api.launch 4000

    execute rotated 0 -90 run function delta:api/launch_looking
