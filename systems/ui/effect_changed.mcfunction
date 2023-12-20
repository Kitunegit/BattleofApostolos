advancement revoke @s only pvp_data:system/changed_effect
function #oh_my_dat:please
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuff
execute if entity @s[nbt={active_effects:[{id:"minecraft:absorption"}]}] run data modify storage concat: args append from storage minecraft:effect string[0]
execute if entity @s[nbt={active_effects:[{id:"minecraft:blindness"}]}] run data modify storage concat: args append from storage minecraft:effect string[2]
execute if entity @s[nbt={active_effects:[{id:"minecraft:conduit_power"}]}] run data modify storage concat: args append from storage minecraft:effect string[3]
execute if entity @s[nbt={active_effects:[{id:"minecraft:dolphins_grace"}]}] run data modify storage concat: args append from storage minecraft:effect string[5]
execute if entity @s[nbt={active_effects:[{id:"minecraft:fire_resistance"}]}] run data modify storage concat: args append from storage minecraft:effect string[6]
execute if entity @s[nbt={active_effects:[{id:"minecraft:haste"}]}] run data modify storage concat: args append from storage minecraft:effect string[8]
execute if entity @s[nbt={active_effects:[{id:"minecraft:health_boost"}]}] run data modify storage concat: args append from storage minecraft:effect string[9]
execute if entity @s[nbt={active_effects:[{id:"minecraft:hero_of_the_village"}]}] run data modify storage concat: args append from storage minecraft:effect string[10]
execute if entity @s[nbt={active_effects:[{id:"minecraft:instant_health"}]}] run data modify storage concat: args append from storage minecraft:effect string[13]
execute if entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run data modify storage concat: args append from storage minecraft:effect string[14]
execute if entity @s[nbt={active_effects:[{id:"minecraft:jump_boost"}]}] run data modify storage concat: args append from storage minecraft:effect string[15]
execute if entity @s[nbt={active_effects:[{id:"minecraft:levitation"}]}] run data modify storage concat: args append from storage minecraft:effect string[16]
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck"}]}] run data modify storage concat: args append from storage minecraft:effect string[17]
execute if entity @s[nbt={active_effects:[{id:"minecraft:night_vision"}]}] run data modify storage concat: args append from storage minecraft:effect string[20]
execute if entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run data modify storage concat: args append from storage minecraft:effect string[22]
execute if entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] run data modify storage concat: args append from storage minecraft:effect string[23]
execute if entity @s[nbt={active_effects:[{id:"minecraft:saturation"}]}] run data modify storage concat: args append from storage minecraft:effect string[24]
execute if entity @s[nbt={active_effects:[{id:"minecraft:slow_falling"}]}] run data modify storage concat: args append from storage minecraft:effect string[25]
execute if entity @s[nbt={active_effects:[{id:"minecraft:speed"}]}] run data modify storage concat: args append from storage minecraft:effect string[27]
execute if entity @s[nbt={active_effects:[{id:"minecraft:strength"}]}] run data modify storage concat: args append from storage minecraft:effect string[28]
execute if entity @s[nbt={active_effects:[{id:"minecraft:water_breathing"}]}] run data modify storage concat: args append from storage minecraft:effect string[30]
function concat:concat_all
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff set string storage concat: result
data remove storage concat: args
execute if entity @s[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] run data modify storage concat: args append from storage minecraft:effect string[1]
execute if entity @s[nbt={active_effects:[{id:"minecraft:darkness"}]}] run data modify storage concat: args append from storage minecraft:effect string[4]
execute if entity @s[nbt={active_effects:[{id:"minecraft:glowing"}]}] run data modify storage concat: args append from storage minecraft:effect string[7]
execute if entity @s[nbt={active_effects:[{id:"minecraft:hunger"}]}] run data modify storage concat: args append from storage minecraft:effect string[11]
execute if entity @s[nbt={active_effects:[{id:"minecraft:instant_damage"}]}] run data modify storage concat: args append from storage minecraft:effect string[12]
execute if entity @s[nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run data modify storage concat: args append from storage minecraft:effect string[18]
execute if entity @s[nbt={active_effects:[{id:"minecraft:nausea"}]}] run data modify storage concat: args append from storage minecraft:effect string[19]
execute if entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run data modify storage concat: args append from storage minecraft:effect string[21]
execute if entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] run data modify storage concat: args append from storage minecraft:effect string[26]
execute if entity @s[nbt={active_effects:[{id:"minecraft:unluck"}]}] run data modify storage concat: args append from storage minecraft:effect string[29]
execute if entity @s[nbt={active_effects:[{id:"minecraft:weakness"}]}] run data modify storage concat: args append from storage minecraft:effect string[31]
execute if entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run data modify storage concat: args append from storage minecraft:effect string[32]
function concat:concat_all
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuff set string storage concat: result
data remove storage concat: args
#say SetUI