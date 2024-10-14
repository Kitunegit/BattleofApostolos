#> plugin_api:send_message
#
# @input
#   args
#       message: string
#   rotation 実行方向
#   location 実行座標
#
# @output
#   returns
#
# @api

#
    execute if data storage plugin_api: {isPluginEnabled: 0} run tellraw @a {"text": "エラー: TestPlugin API が導入されていません", "color": "red"}
    execute if data storage plugin_api: {isPluginEnabled: 0} run return fail

#
    #> @private
    #declare tag plugin_api.messenger

    #> @private
    #declare tag plugin_api.target

    $summon marker ~ ~ ~ {Tags: ['plugin_api.messenger', 'plugin_api.json_message $(message)']}

    #> @private
    #declare tag plugin_api.temporary

    summon marker ~ ~ ~ {Tags: ["plugin_api.temporary"]}

    tp @e[type=marker,tag=plugin_api.temporary] ~ ~ ~ ~ ~

    data modify entity @e[type=marker,tag=plugin_api.messenger,limit=1] Rotation set from entity @e[type=marker,tag=plugin_api.temporary,limit=1] Rotation

    kill @e[type=marker,tag=plugin_api.temporary]

    tp @e[type=marker,tag=plugin_api.messenger] ~ ~ ~

    execute store result storage plugin_api: return int 1 run scoreboard players get @e[type=marker,tag=plugin_api.messenger,limit=1] plugin_api.return

    kill @e[type=marker,tag=plugin_api.messenger]

    return run data get storage plugin_api: return
