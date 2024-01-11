#演出
    execute at @s run playsound entity.player.attack.sweep player @a[distance=..10] ~ ~ ~ 2 1.2
    execute at @s run particle minecraft:dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.3 100
#タグ消してバフ用のカウントに
    tag @s remove assassin.skill_1_charge
    scoreboard players set @s assassin_skill_1_charge 160
#バフを付与
    scoreboard players add @s generic.attack 600
    function pvp_data:pvpfunctions/systems/status/apply {apply_effect:"generic.speed",apply_num:140}
    function pvp_data:pvpfunctions/systems/status/apply {apply_effect:"generic.attack_speed",apply_num:200}