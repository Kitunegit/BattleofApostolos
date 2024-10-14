#> plugin_api:load
#
# @within tag/function minecraft:load

#
    forceload add 0 0

    scoreboard objectives add plugin_api.return dummy

#
    #> @private
    #declare tag plugin_api.messenger

    #> @private
    #declare tag plugin_api.target

    data modify storage plugin_api: _ set value 'plugin_api.json_message {"id": "isEnabled", "objective": "plugin_api.return"}'

    summon marker ~ ~ ~ {Tags: ['plugin_api.messenger']}

    data modify entity @e[type=marker,tag=plugin_api.messenger,limit=1] Tags append from storage plugin_api: _

    #> @private
    #declare tag plugin_api.temporary

    summon marker ~ ~ ~ {Tags: ["plugin_api.temporary"]}

    tp @e[type=marker,tag=plugin_api.temporary] ~ ~ ~ ~ ~

    data modify entity @e[type=marker,tag=plugin_api.messenger,limit=1] Rotation set from entity @e[type=marker,tag=plugin_api.temporary,limit=1] Rotation

    kill @e[type=marker,tag=plugin_api.temporary]

    tp @e[type=marker,tag=plugin_api.messenger] ~ ~ ~

    data modify storage plugin_api: isPluginEnabled set value 0

    execute store result storage plugin_api: isPluginEnabled int 1 run scoreboard players get @e[type=marker,tag=plugin_api.messenger,limit=1] plugin_api.return

    kill @e[type=marker,tag=plugin_api.messenger]

    execute if data storage plugin_api: {isPluginEnabled: 1} run say TestPlugin API がロードされました
    execute if data storage plugin_api: {isPluginEnabled: 0} run say TestPlugin API のロードに失敗しました: TestPluginが導入されていません
