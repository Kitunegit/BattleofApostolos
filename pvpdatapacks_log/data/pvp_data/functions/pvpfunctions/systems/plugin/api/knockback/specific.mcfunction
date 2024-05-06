#> pvp_data:pvpfunctions/systems/plugin/api/knockback/specific
#
# プラグインの力で実行者のエンティティを指定したベクトルでノックバックさせます。
# プレイヤー以外にも使えるよ
#
# @input
#   args
#       x: double
#       y: double
#       z: double
#
# @api

#
    $data modify storage temporary: knockback set value { x: $(x)d, y: $(y)d, z: $(z)d }

#
    scoreboard players operation $previous plugin.api.knockback.x = @s plugin.api.knockback.x

    scoreboard players operation $previous plugin.api.knockback.y = @s plugin.api.knockback.y

    scoreboard players operation $previous plugin.api.knockback.z = @s plugin.api.knockback.z

    execute store result score @s plugin.api.knockback.x run data get storage temporary: knockback.x 1000

    execute store result score @s plugin.api.knockback.y run data get storage temporary: knockback.y 1000

    execute store result score @s plugin.api.knockback.z run data get storage temporary: knockback.z 1000

    data remove storage temporary: knockback

    scoreboard players operation @s plugin.api.knockback.x += $previous plugin.api.knockback.x

    scoreboard players operation @s plugin.api.knockback.y += $previous plugin.api.knockback.y

    scoreboard players operation @s plugin.api.knockback.z += $previous plugin.api.knockback.z

    scoreboard players reset $previous plugin.api.knockback.x

    scoreboard players reset $previous plugin.api.knockback.y

    scoreboard players reset $previous plugin.api.knockback.z

#
    scoreboard players set @s plugin.scheduler.tick_listener 1
