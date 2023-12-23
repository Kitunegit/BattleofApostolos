#個人ストレージ開放
    function oh_my_dat:please
#$2を2セット
    scoreboard players set $2 effect_num_count 2
#buff or debuffの数を代入し、2で割った余りを取得
    scoreboard players operation $temp effect_num_count = $(type) effect_num_count
    scoreboard players operation $temp effect_num_count %= $2 effect_num_count
#偶数か奇数かによって first or secondに代入
$execute if score $temp effect_num_count matches 0 run data modify storage concat: first set from storage effect string[$(list_num)]
$execute if score $temp effect_num_count matches 1 run data modify storage concat: second set from storage effect string[$(list_num)]
#偶数の場合
    #文字列統合
    execute if score $temp effect_num_count matches 0 run function concat:concat
    #バフ/デバフの数を2で割った数を取得する
$execute if score $temp effect_num_count matches 0 run scoreboard players operation $temp2 effect_num_count = $(type) effect_num_count
execute if score $temp effect_num_count matches 0 run scoreboard players operation $temp2 effect_num_count /= $2 effect_num_count
    #取得した数値をtemp.getに代入する
    execute if score $temp effect_num_count matches 0 run execute store result storage minecraft:effect_temp temp.get int 1 run scoreboard players get $temp2 effect_num_count
    #バフ/デバフをtemp.typeに代入する
$execute if score $temp effect_num_count matches 0 run data modify storage minecraft:effect_temp temp.type set value $(type)
    #addsファンクションにtypeと割った数を渡す
    execute if score $temp effect_num_count matches 0 run function pvp_data:pvpfunctions/systems/ui/adds with storage effect_temp temp




#$execute unless score $(type) effect_num_count matches 2 run data modify storage concat: args append from storage minecraft:effect string[$(list_num)]
#$execute unless score $(type) effect_num_count matches 2 run data modify storage concat: first set value "$(list_num)"
#$execute if score $(type) effect_num_count matches 2 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff_3 append from storage minecraft:effect string[$(list_num)]
$scoreboard players add $(type) effect_num_count 1