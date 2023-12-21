function #oh_my_dat:please
$execute unless score $(type) effect_num_count matches 2 run data modify storage concat: args append from storage minecraft:effect string[$(list_num)]
$execute if score $(type) effect_num_count matches 2 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff_3 append from storage minecraft:effect string[$(list_num)]
$scoreboard players add $(type) effect_num_count 1