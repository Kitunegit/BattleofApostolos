#> plugin_api:math/bounding_box
#
# @input
#   args
#       width: double 横幅
#       height: double 高さ
#       depth: double 奥行き
#       show_outline: boolean trueであれば外枠を表示する
#   rotation 実行方向
#   location 実行座標
#
# @output
#   ボックスと衝突したエンティティに"plugin_api.box_intersection"タグが付与されます
#
# @api

#
    $function plugin_api:math/bounding_box_with_roll {width: $(width), height: $(height), depth: $(depth), roll: 0, show_outline: $(show_outline)}
