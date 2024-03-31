#> pvp_data:pvpfunctions/systems/job_system/damage/knockback/player
#
# @input
#   args
#       horizontal: double 横方向のノックバックの強さ
#       vertical: double 縦方向のノックバックの強さ
#
# @within function pvp_data:pvpfunctions/systems/job_system/damage/apply

#慣性リセット
    execute at @s run function pvp_data:pvpfunctions/systems/job_system/damage/internal/reset_motion

#吹き飛ばす
    $execute at @s facing entity @e[tag=damage.apply_source,limit=1] feet rotated ~180 0 run function pvp_data:pvpfunctions/systems/plugin/api/knockback/rotation {strength: $(horizontal)d}

    $function pvp_data:pvpfunctions/systems/plugin/api/knockback/specific {x: 0d, y: $(vertical)d, z: 0d}
