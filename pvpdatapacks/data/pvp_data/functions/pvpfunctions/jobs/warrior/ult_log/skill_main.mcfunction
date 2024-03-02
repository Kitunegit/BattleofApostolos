#チャージ開始処理
    execute if score @s warrior_ult_timer matches 120 run function pvp_data:pvpfunctions/systems/job_system/charge/set_up
#演出

    #さうんど
        execute if score @s warrior_ult_timer matches 120 at @s run playsound block.beacon.deactivate player @a[distance=..10] ~ ~ ~ 0.7 0.5
        execute if score @s warrior_ult_timer matches 100 at @s run playsound block.anvil.land player @a[distance=..10] ~ ~ ~ 0.7 0.5
        execute if score @s warrior_ult_timer matches 80 at @s run playsound block.anvil.land player @a[distance=..10] ~ ~ ~ 0.7 0.7
        execute if score @s warrior_ult_timer matches 60 at @s run playsound block.anvil.land player @a[distance=..10] ~ ~ ~ 0.7 0.8
        execute if score @s warrior_ult_timer matches 40 at @s run playsound block.anvil.land player @a[distance=..10] ~ ~ ~ 0.7 1

    #危険エリア表示
        execute if score @s warrior_ult_timer matches 20..120 at @s run particle block redstone_block ~ ~ ~ 2 0.75 2 0.1 45
        
#失敗
        execute if score @s warrior_ult_timer matches 20..120 run function pvp_data:pvpfunctions/systems/job_system/charge/get
        execute if score @s warrior_ult_timer matches 20..120 if entity @s[tag=charge_check] run function pvp_data:pvpfunctions/jobs/warrior/ult/skill_failed
#開始
    #飛翔
        execute if score @s warrior_ult_timer matches 20 run effect clear @s slowness
        execute if score @s warrior_ult_timer matches 20 run effect clear @s jump_boost
        execute if score @s warrior_ult_timer matches 20 at @s run particle dust 0.494 0.212 0.02 1.2 ~ ~0.5 ~ 2 1.25 2 1 60 force
        execute if score @s warrior_ult_timer matches 20 at @s run playsound minecraft:item.trident.throw player @a[distance=..10] ~ ~ ~ 1 1.2
        execute if score @s warrior_ult_timer matches 20 run effect give @s levitation 1 127 true
    #空中固定
        execute if score @s warrior_ult_timer matches 15 run effect give @s levitation 1 255 true
        execute if score @s warrior_ult_timer matches 15 at @s run summon marker ~ ~50 ~ {Tags:[warrior_jump_hover_ult]}
        execute if score @s warrior_ult_timer matches 15 at @e[tag=warrior_jump_hover_ult,type=marker] run tp @s ~ ~-50 ~
        execute if score @s warrior_ult_timer matches 15 run kill @e[type=marker,tag=warrior_jump_hover_ult]
    #下方向に
        execute if score @s warrior_ult_timer matches 1 run effect clear @s levitation
        execute if score @s warrior_ult_timer matches 1 run scoreboard players set $strength delta.api.launch 160000
        execute if score @s warrior_ult_timer matches 1 at @s rotated ~ 90 run function delta:api/launch_looking
        execute if score @s warrior_ult_timer matches 1 run tag @s add warrior_jump_hover_ult

scoreboard players remove @s warrior_ult_timer 1