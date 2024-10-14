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
    $function plugin_api:send_message {message: '{"id": "spawn_bounding_box", "size": [$(width), $(height), $(depth)], "roll": $(roll), "show_outline": $(show_outline)}'}
