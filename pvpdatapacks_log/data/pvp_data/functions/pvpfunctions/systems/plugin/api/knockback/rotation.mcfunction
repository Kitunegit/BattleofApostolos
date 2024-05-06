#> pvp_data:pvpfunctions/systems/plugin/api/knockback/rotation
#
# プラグインの力で実行者のエンティティを実行方向にノックバックさせます。
# プレイヤー以外にも使えるよ
#
# @input
#   args
#       strength: double
#
# @api

#
    scoreboard players operation $previous plugin.api.knockback.x = @s plugin.api.knockback.x

    scoreboard players operation $previous plugin.api.knockback.y = @s plugin.api.knockback.y

    scoreboard players operation $previous plugin.api.knockback.z = @s plugin.api.knockback.z

#
    #declare tag plugin.api.knockback.marker
    execute positioned 0.0 0.0 0.0 run summon marker ^ ^ ^1 {Tags: ["plugin.api.knockback.marker"]}

    execute store result score @s plugin.api.knockback.x run data get entity @e[tag=plugin.api.knockback.marker,limit=1] Pos[0] 1000

    execute store result score @s plugin.api.knockback.y run data get entity @e[tag=plugin.api.knockback.marker,limit=1] Pos[1] 1000

    execute store result score @s plugin.api.knockback.z run data get entity @e[tag=plugin.api.knockback.marker,limit=1] Pos[2] 1000

    kill @e[type=marker,tag=plugin.api.knockback.marker,limit=1]

#
    $data modify storage temporary: knockback set value { strength: $(strength)d }

    execute store result score $temporary plugin.scheduler.tick_listener run data get storage temporary: knockback.strength 1000

    data remove storage temporary: knockback

    scoreboard players set $1000 plugin.scheduler.tick_listener 1000

    scoreboard players operation @s plugin.api.knockback.x *= $temporary plugin.scheduler.tick_listener
    scoreboard players operation @s plugin.api.knockback.x /= $1000 plugin.scheduler.tick_listener

    scoreboard players operation @s plugin.api.knockback.y *= $temporary plugin.scheduler.tick_listener
    scoreboard players operation @s plugin.api.knockback.y /= $1000 plugin.scheduler.tick_listener

    scoreboard players operation @s plugin.api.knockback.z *= $temporary plugin.scheduler.tick_listener
    scoreboard players operation @s plugin.api.knockback.z /= $1000 plugin.scheduler.tick_listener

    scoreboard players operation @s plugin.api.knockback.x += $previous plugin.api.knockback.x

    scoreboard players operation @s plugin.api.knockback.y += $previous plugin.api.knockback.y

    scoreboard players operation @s plugin.api.knockback.z += $previous plugin.api.knockback.z

    scoreboard players reset $previous plugin.api.knockback.x

    scoreboard players reset $previous plugin.api.knockback.y

    scoreboard players reset $previous plugin.api.knockback.z

#
    scoreboard players set @s plugin.scheduler.tick_listener 1

#
    scoreboard players reset $temporary plugin.scheduler.tick_listener

    scoreboard players reset $1000 plugin.scheduler.tick_listener
