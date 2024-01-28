#> pvp_data:pvpfunctions/jobs/assassin/skill/1/charge_start
#
# 暗殺者のスキルチャージの初回動作の処理
#
# @within function pvp_data:pvpfunctions/jobs/assassin/skill/1/skill_main

# 演出
    execute at @s run playsound entity.player.attack.sweep player @a[distance=..10] ~ ~ ~ 2 1.2
    execute at @s run particle minecraft:dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.3 100
    
# タグ消してバフ用のカウントに
    tag @s remove assassin.skill_1_charge
    scoreboard players set @s assassin_skill_1_charge 160

# バフを付与
    effect clear @s slowness
    function pvp_data:pvpfunctions/systems/status/effect/apply {name:"generic.attack",depth:600,duration:160,overwrite:false}
    function pvp_data:pvpfunctions/systems/status/effect/apply {name:"generic.speed",depth:2,duration:160,overwrite:false}
    function pvp_data:pvpfunctions/systems/status/effect/apply {name:"generic.attack_speed",depth:2,duration:67,overwrite:false}

# デバッグ用
 say test