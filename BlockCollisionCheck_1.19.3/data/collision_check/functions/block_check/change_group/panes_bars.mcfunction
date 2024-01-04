#> collision_check:block_check/change_group/panes_bars
#
#
#
# @within collision_check:block_check/change_group_a

execute if score #Pos.X collision_check matches 4375..5625 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 4375..5625 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:change_collision/panes_bars[north=true] if score #Pos.X collision_check matches 4375..5625 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 0..5625 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:change_collision/panes_bars[south=true] if score #Pos.X collision_check matches 4375..5625 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 4375..9999 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:change_collision/panes_bars[east=true] if score #Pos.X collision_check matches 4375..9999 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 4375..5625 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:change_collision/panes_bars[west=true] if score #Pos.X collision_check matches 0..5625 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 4375..5625 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0