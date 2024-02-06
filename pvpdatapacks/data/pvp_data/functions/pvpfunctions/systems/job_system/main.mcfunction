#> pvp_data:pvpfunctions/systems/job_system/main
#
# 役職ごとの処理の振り分け、共通処理です
#
# @within function pvp_data:pvpfunctions/systems/main

# 各役職常時実行

    execute if score @s jobscore matches 8 run function pvp_data:pvpfunctions/jobs/guardian/main
    execute if score @s jobscore matches 7 run function pvp_data:pvpfunctions/jobs/archer/main
    execute if score @s jobscore matches 6 run function pvp_data:pvpfunctions/jobs/assassin/main
    
    execute if score @s jobscore matches 4 run function pvp_data:pvpfunctions/jobs/warrior/main
    execute if score @s jobscore matches 3 run function pvp_data:pvpfunctions/jobs/knight/main
    execute if score @s jobscore matches 2 run function pvp_data:pvpfunctions/jobs/wizard/main
    
    execute if score @s jobscore matches 0.. run function pvp_data:pvpfunctions/systems/job_system/ult_system/main
    execute if score @s jobscore matches 0.. run function pvp_data:pvpfunctions/systems/ui/main
    execute if score @s jobscore matches 0.. run function pvp_data:pvpfunctions/systems/job_system/healing_system/main
    execute if score @s jobscore matches 0.. if score @s Charge.Time matches 1.. run function pvp_data:pvpfunctions/systems/job_system/charge/tick
    scoreboard players set @a r_click 0

# ジャスガ
    #execute unless score @s jobscore matches 7 unless score @s jobscore matches 2 run function pvp_data:pvpfunctions/systems/job_system/justguard_system/main
# クール減らし
    execute if score @s jobscore matches 0.. if score @s skill_1_cool matches 1.. run scoreboard players operation @s skill_1_con = @s skill_1_cool
    execute if score @s jobscore matches 0.. if score @s skill_1_cool matches 1.. run scoreboard players operation @s skill_1_con %= $const skill_1_con

    execute if score @s jobscore matches 0.. if score @s skill_2_cool matches 1.. run scoreboard players operation @s skill_2_con = @s skill_2_cool
    execute if score @s jobscore matches 0.. if score @s skill_2_cool matches 1.. run scoreboard players operation @s skill_2_con %= $const skill_2_con

    execute if score @s jobscore matches 0.. if score @s special_cool matches 1.. run scoreboard players operation @s special_con = @s special_cool
    execute if score @s jobscore matches 0.. if score @s special_cool matches 1.. run scoreboard players operation @s special_con %= $const special_con

    scoreboard players remove @s[scores={skill_1_cool=1..}] skill_1_cool 1
    scoreboard players remove @s[scores={skill_2_cool=1..}] skill_2_cool 1
    scoreboard players remove @s[scores={special_cool=1..}] special_cool 1
# スニークスコア
    execute if predicate pvp_data:sneaking run scoreboard players add @s sneaking 1
    execute unless predicate pvp_data:sneaking run scoreboard players set @s sneaking 0
# 死亡処理
    execute if score @s death matches 1.. run attribute @s generic.max_health base set 40
    execute if score @s death matches 1.. run effect give @s instant_health 1 50 true
    execute if score @s death matches 1.. run gamemode spectator @s
    execute if score @s death matches 1.. run tag @s remove player
    execute if score @s death matches 1.. run scoreboard players set @s death 0