#> collision_check:block_check/change_group/chorus_plant
#
#
#
# @within collision_check:block_check/change_group_d


execute if score #Pos.X collision_check matches 1875..8125 if score #Pos.Y collision_check matches 1875..8125 if score #Pos.Z collision_check matches 1875..8125 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:chorus_plant[down=true] if score #Pos.X collision_check matches 1875..8125 if score #Pos.Y collision_check matches 0..8125 if score #Pos.Z collision_check matches 1875..8125 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:chorus_plant[north=true] if score #Pos.X collision_check matches 1875..8125 if score #Pos.Y collision_check matches 1875..8125 if score #Pos.Z collision_check matches 0..8125 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:chorus_plant[south=true] if score #Pos.X collision_check matches 1875..8125 if score #Pos.Y collision_check matches 1875..8125 if score #Pos.Z collision_check matches 1875..9999 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:chorus_plant[east=true] if score #Pos.X collision_check matches 1875..9999 if score #Pos.Y collision_check matches 1875..8125 if score #Pos.Z collision_check matches 1875..8125 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:chorus_plant[west=true] if score #Pos.X collision_check matches 0..8125 if score #Pos.Y collision_check matches 1875..8125 if score #Pos.Z collision_check matches 1875..8125 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:chorus_plant[up=true] if score #Pos.X collision_check matches 1875..8125 if score #Pos.Y collision_check matches 1875..9999 if score #Pos.Z collision_check matches 1875..8125 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0