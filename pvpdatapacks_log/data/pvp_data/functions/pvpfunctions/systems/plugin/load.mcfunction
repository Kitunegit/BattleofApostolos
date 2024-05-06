#> pvp_data:pvpfunctions/systems/plugin/load
#
# @within function pvp_data:pvpfunctions/systems/load

# オブジェクト作成
    scoreboard objectives add plugin.events.player.left_click dummy

    scoreboard objectives add plugin.scheduler.tick_listener dummy

    scoreboard objectives add plugin.api.knockback.x dummy
    scoreboard objectives add plugin.api.knockback.y dummy
    scoreboard objectives add plugin.api.knockback.z dummy
