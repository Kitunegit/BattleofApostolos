#> pvp_data:pvpfunctions/jobs/knight/ult/slash/fire
#
# 騎士ウルト斬撃開始処理
#
# @internal
# 音声
    execute at @s run playsound entity.blaze.shoot player @a[distance=..7] ~ ~ ~ 0.8 1.3
    execute at @s run playsound entity.player.attack.sweep player @a[distance=..7] ~ ~ ~ 0.8 1
    execute at @s run playsound entity.ender_dragon.flap player @a[distance=..7] ~ ~ ~ 0.2 0.3

# マーカー召喚
    execute at @s run summon marker ^ ^ ^1 {Tags:[Knight_ult.Blade]}
# マーカーの方向変更
    execute at @s rotated as @s as @e[tag=Knight_ult.Blade,tag=!Knight_ult.facing] run tp @s ^ ^ ^-1 facing ~ ~ ~
    execute as @e[tag=Knight_ult.Blade,tag=!Knight_ult.facing] at @s run tp @s ^ ^ ^4
    tag @e[tag=Knight_ult.Blade,tag=!Knight_ult.facing] add Knight_ult.facing
# リセット
    tag @s remove Charge.Stop
    tag @e[tag=knight_ult] add Knight_ult.kill
    schedule function pvp_data:pvpfunctions/jobs/knight/ult/slash/kill_blade 10t
    team remove Glowing.Red
# タグ付け
    tag @s add Knight_ult.Player
# CT発生
    scoreboard players set @s ult_cool 120