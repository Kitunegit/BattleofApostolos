#> pvp_data:pvpfunctions/systems/job_system/main
#
# 役職ごとの処理の振り分け、共通処理です
#
# @within function pvp_data:pvpfunctions/systems/main

    scoreboard players remove @s[scores={skill_1_cool=1..}] skill_1_cool 1
    scoreboard players remove @s[scores={skill_2_cool=1..}] skill_2_cool 1
    scoreboard players remove @s[scores={special_cool=1..}] special_cool 1


# 各役職常時実行

    execute if score @s jobscore matches 8 run function pvp_data:pvpfunctions/jobs/guardian/main
    execute if score @s jobscore matches 7 run function pvp_data:pvpfunctions/jobs/archer/main
    execute if score @s jobscore matches 6 run function pvp_data:pvpfunctions/jobs/assassin/main
    
    execute if score @s jobscore matches 4 run function pvp_data:pvpfunctions/jobs/warrior/main
    execute if score @s jobscore matches 3 run function pvp_data:pvpfunctions/jobs/knight/main
    execute if score @s jobscore matches 2 run function pvp_data:pvpfunctions/jobs/wizard/main
    
    execute if score @s jobscore matches 0.. run function pvp_data:pvpfunctions/systems/job_system/ult_system/main
    execute if score @s jobscore matches 0.. run function pvp_data:pvpfunctions/jobs/common/cool_damage/tick
    execute if score @s jobscore matches 0.. run function pvp_data:pvpfunctions/systems/ui/main
    execute if score @s jobscore matches 0.. run function pvp_data:pvpfunctions/systems/job_system/healing_system/main
    execute if score @s jobscore matches 0.. if score @s Charge.Time matches 1.. run function pvp_data:pvpfunctions/systems/job_system/charge/tick
    scoreboard players set @s r_click 0

# ジャスガ
    #execute unless score @s jobscore matches 7 unless score @s jobscore matches 2 run function pvp_data:pvpfunctions/systems/job_system/justguard_system/main

# スニークスコア
    execute if predicate pvp_data:sneaking run scoreboard players add @s sneaking 1
    execute unless predicate pvp_data:sneaking run scoreboard players set @s sneaking 0
# 死亡処理
    execute if score @s death matches 1.. run attribute @s generic.max_health base set 40
    execute if score @s death matches 1.. run effect give @s instant_health 1 50 true
    execute if score @s death matches 1.. run gamemode spectator @s
    execute if score @s death matches 1.. run tag @s remove player
    execute if score @s death matches 1.. run function pvp_data:pvpfunctions/systems/status/update
    execute if score @s death matches 1.. run scoreboard players set @s death 0

# プレイヤーに固有スコアを割り振る
    execute as @e unless score @s PlayerID = @s PlayerID store result score @s PlayerID run scoreboard players add $Core PlayerID 1