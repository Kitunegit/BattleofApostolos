#> pvp_data:pvpfunctions/consumable_items/small_heal_potion
#
# 小さな回復薬
#
# @public

#
#    give @s ender_eye{ \
#       consume: { \
#           duration: 20, \
#           cool_time: 100, \
#           rarity: 1, \
#           on_consume: [ \
#               { \
#                   type: "effect", \
#                   id: "instant_health", \
#                   amplifier: 0, \
#                   duration: 1 \
#               } \
#           ], \
#           sound: { \
#               id: "minecraft:entity.generic.drink", \
#               pitch: 1.0 \
#           } \
#       }, \
#        display: { \
#           Name: '{"text": "小さな回復薬", "italic": false, "color": "light_purple", "bold": true}', \
#           Lore: [ \
#               '{"text": "飲むと体力を4回復", "italic": false, "color": "white"}', \
#               '{"text": "小さくすぐ飲めるものの不味い", "italic": false, "color": "white"}', \
#               '{"text": "─────アイテム情報─────", "italic": false, "color": "gray"}', \
#               '{"text": "使用時間: 1s", "italic": false, "color": "white"}', \
#               '{"text": "使用後ポーションCT: 5s", "italic": false, "color": "white"}', \
#               '{"text": "レアリティ: コモン", "italic": false, "color": "white"}' \
#           ] \
#       }, \
#       CustomModelData: 1 \
#   }
