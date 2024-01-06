#> pvp_data:pvpfunctions/systems/job_system/damage/knockback/player
#
# @input
#   args
#       horizontal: double 横方向のノックバックの強さ
#       vertical: double 縦方向のノックバックの強さ
#
# @within function pvp_data:pvpfunctions/systems/job_system/damage/apply

#ストレージに一時保存
    #declare storage temporary: double→10000倍intへの変換用一時データベース
    $data modify storage temporary: value set value [$(horizontal)d, $(vertical)d]

#scoreboardに10000倍して代入
    execute store result score $strength delta.api.launch run data get storage temporary: value[0] 10000

#慣性リセット
    execute at @s run function pvp_data:pvpfunctions/systems/job_system/damage/internal/reset_motion

#吹き飛ばす
    execute at @s facing entity @e[tag=damage.apply_source,limit=1] feet rotated ~180 0 run function delta:api/launch_looking

    execute store result score $strength delta.api.launch run data get storage temporary: value[1] 10000

    execute rotated 0 -90 run function delta:api/launch_looking
