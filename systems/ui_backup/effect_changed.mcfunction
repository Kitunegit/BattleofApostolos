function #oh_my_dat:please
scoreboard players set buff effect_num_count 2
scoreboard players set debuff effect_num_count 2
advancement revoke @s only pvp_data:system/changed_effect

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff0 set value ""
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff1 set value ""
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff2 set value ""
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff3 set value ""
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuff set value ""
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff_3 set value ""

execute if entity @s[nbt={active_effects:[{id:"minecraft:absorption"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:0,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:blindness"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:2,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:conduit_power"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:3,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:dolphins_grace"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:5,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:fire_resistance"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:6,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:haste"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:8,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:health_boost"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:9,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:hero_of_the_village"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:10,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:instant_health"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:13,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:14,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:jump_boost"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:15,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:levitation"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:16,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:17,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:night_vision"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:20,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:22,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:23,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:saturation"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:24,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:slow_falling"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:25,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:speed"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:27,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:strength"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:28,type:buff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:water_breathing"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:30,type:buff}

tellraw @s [{"text":"buff:","color":"aqua"},{"nbt":"result","storage":"concat:","bold":true,"color":"white"}]

execute if entity @s[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:1,type:debuff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:darkness"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:4,type:debuff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:glowing"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:7,type:debuff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:hunger"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:11,type:debuff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:instant_damage"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:12,type:debuff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:18,type:debuff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:nausea"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:19,type:debuff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:21,type:debuff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:26,type:debuff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:unluck"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:29,type:debuff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:weakness"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:31,type:debuff}
execute if entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run function pvp_data:pvpfunctions/systems/ui/addstring {list_num:32,type:debuff}

function concat:concat_all
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuff set string storage concat: result
data remove storage concat: args
tellraw @s [{"text":"debuff:","color":"aqua"},{"nbt":"result","storage":"concat:","bold":true,"color":"white"}]
#say SetUI