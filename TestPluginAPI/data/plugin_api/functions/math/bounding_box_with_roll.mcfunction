#> plugin_api:math/bounding_box_with_roll
#
# @input
#   args
#       width: double 横幅
#       height: double 高さ
#       depth: double 奥行き
#       show_outline: boolean trueであれば外枠を表示する
#       roll: double ロール角回転
#   rotation 実行方向
#   location 実行座標
#
# @output
#   ボックスと衝突したエンティティに"plugin_api.box_intersection"タグが付与されます
#
# @api

#
    #> @private
    #declare tag plugin_api.messenger

    #> @private
    #declare tag plugin_api.target

    $summon marker ~ ~ ~ {Tags: ["plugin_api.messenger", "plugin_api.target", "testplugin:spawn_bounding_box $(width) $(height) $(depth) $(show_outline) $(roll)"]}

    #> @private
    #declare tag plugin_api.temporary

    summon marker ~ ~ ~ {Tags: ["plugin_api.temporary"]}

    tp @e[tag=plugin_api.temporary] ~ ~ ~ ~ ~

    data modify entity @e[tag=plugin_api.messenger,limit=1] Rotation set from entity @e[tag=plugin_api.temporary,limit=1] Rotation

    kill @e[tag=plugin_api.temporary]

    tp @e[tag=plugin_api.messenger] ~ ~ ~

    kill @e[tag=plugin_api.messenger]
