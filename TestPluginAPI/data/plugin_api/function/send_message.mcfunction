#> plugin_api:send_message
#
# プラグインにデータを送信し、場合に応じて返り値を受け取ります。
#
# @input
#   args
#       message: string メッセージ
#   rotation 実行方向
#   location 実行座標
#
# @output
#   returns
#
# @api

# プラグイン導入チェック
    execute if data storage plugin_api: {PluginState: 0} run tellraw @a {"text": "エラー: TestPlugin API が導入されていません", "color": "red"}
    execute if data storage plugin_api: {PluginState: 0} run return fail

# 通信用エンティティ召喚
    #> @private
    #declare tag plugin_api.messenger

    #> @private
    #declare tag plugin_api.target

    $summon marker ~ ~ ~ {Tags: ['plugin_api.messenger', 'plugin_api.json_message $(message)']}

# 値受取準備
    scoreboard objectives add plugin_api.return dummy

    scoreboard players set # plugin_api.return 0

    data remove storage plugin_api: _

# データ送信・受信
    tp @e[type=marker,tag=plugin_api.messenger,limit=1] ~ ~ ~ ~ ~

    execute store result storage plugin_api: _ int 1 run scoreboard players get # plugin_api.return

# エンティティとオブジェクティブ削除
    kill @e[type=marker,tag=plugin_api.messenger,limit=1]

    scoreboard objectives remove plugin_api.return

# 返り値をさらに外部へ返却
    return run data get storage plugin_api: _
