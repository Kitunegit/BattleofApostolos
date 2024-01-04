#> collision_check:block_check/change_group/change_group_a
#
# @within collision_check:block_check/change_collision


# モブの頭
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:change_collision/mob_head run function collision_check:block_check/change_group/mob_head
# アメジストの芽
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:change_collision/amethyst run function collision_check:block_check/change_group/amethyst
# 板ガラスと鉄格子
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:change_collision/panes_bars run function collision_check:block_check/change_group/panes_bars
# ランタン
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:change_collision/lantern run function collision_check:block_check/change_group/lantern
# チェスト
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:change_collision/chests run function collision_check:block_check/change_group/chests
