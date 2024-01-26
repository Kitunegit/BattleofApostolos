#> pvp_data:pvpfunctions/systems/status/apply
#
# @deprecated

$scoreboard players set @s $(apply_effect) $(apply_num)
$say $(apply_effect)を$(apply_num)に変えました
function #oh_my_dat:please
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.speed double 0.001 run scoreboard players get @s generic.speed
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.attack_speed double 0.01 run scoreboard players get @s generic.attack_speed
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.max_health double 1 run scoreboard players get @s generic.max_health
function pvp_data:pvpfunctions/systems/status/attribute with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff
