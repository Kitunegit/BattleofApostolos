#> pvp_data:pvpfunctions/systems/job_system/damage/hurt
#
# ダメージを与える処理を行います。
#
# @within
#   function
#       pvp_data:pvpfunctions/systems/job_system/damage/operation/

# advancement回避
    #declare tag damage.avoid_advancement
    tag @e[tag=damage.apply_source] add damage.avoid_advancement

# マクロで代入
    $damage @s $(amount) $(type) by @e[tag=damage.apply_source,limit=1]

# リセット
    tag @e[tag=damage.apply_source] remove damage.avoid_advancement

# 被ダメ時回復阻害
    scoreboard players set @s healing_cool 100

# ダメージ量表示
    #declare tag damage.indicate_center
    execute at @s run summon marker ~ ~1.625 ~ {Tags: ["damage.indicate_center"]}

    execute store result entity @e[tag=damage.indicate_center,limit=1] Rotation[0] float 1 run random value -180..179

    execute store result entity @e[tag=damage.indicate_center,limit=1] Rotation[1] float 1 run random value -30..30

    #declare tag damage.indicate_display
    #declare tag damage.indicate_temporary
    execute at @e[tag=damage.indicate_center] run summon text_display ^ ^ ^0.5 {Tags: ["damage.indicate_display", "damage.indicate_temporary"], billboard: "center"}

    execute at @e[tag=damage.indicate_center] run particle dust 1 1 1 1 ^ ^ ^0.5 0.2 0.2 0.2 0.0 2 force

    data modify entity @e[tag=damage.indicate_temporary,limit=1] Rotation set from entity @e[tag=damage.indicate_center,limit=1] Rotation

    data modify entity @e[tag=damage.indicate_temporary,limit=1] text set string storage temporary: value.amount 0 -1

    tag @e remove damage.indicate_temporary

    kill @e[tag=damage.indicate_center]
