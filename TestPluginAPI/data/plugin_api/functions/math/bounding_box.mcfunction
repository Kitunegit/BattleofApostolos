#> plugin_api:math/bounding_box
#
# @input
#   args
#       width: double 横幅
#       height: double 高さ
#       depth: double 奥行き
#       showOutline: boolean trueであれば外枠を表示する
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

    $summon marker ~ ~ ~ {Tags: ["plugin_api.messenger", "plugin_api.target", "testplugin:spawn_bounding_box $(width) $(height) $(depth) $(showOutline)"]}

    tp @e[tag=plugin_api.messenger] ~ ~ ~

    kill @e[tag=plugin_api.messenger]
