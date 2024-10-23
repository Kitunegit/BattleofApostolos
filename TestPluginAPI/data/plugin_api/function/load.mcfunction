#> plugin_api:load
#
# @within tag/function minecraft:load

#
    forceload add 0 0

#
    #> @internal
    # declare storage plugin_api:

    data modify storage plugin_api: PluginState set value -1

    function plugin_api:send_message {message: '{"id": "is_enabled"}'}

    data modify storage plugin_api: PluginState set from storage plugin_api: _

    execute if data storage plugin_api: {PluginState: 1} run say TestPlugin API がロードされました
    execute if data storage plugin_api: {PluginState: 0} run say TestPlugin API のロードに失敗しました: TestPluginが導入されていません
