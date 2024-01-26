function pvp_data:gimmick_system/main
function pvp_data:pvpfunctions/systems/advancements/main
execute as @a[scores={jobscore=0..}] run function pvp_data:pvpfunctions/systems/job_system/main
function pvp_data:pvpfunctions/systems/area_system/main

tag @a[gamemode=!spectator] add player


#execute as @a[tag=sand] at @s run fill ~-15 ~-5 ~-15 ~15 ~15 ~15 grass_block replace sand

# プレイヤーによる攻撃検知のための常時実行
    function pvp_data:pvpfunctions/systems/player_attack/tick
