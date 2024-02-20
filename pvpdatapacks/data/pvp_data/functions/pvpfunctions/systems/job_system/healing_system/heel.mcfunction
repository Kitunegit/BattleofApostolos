scoreboard players set $100 healing_cool 100
scoreboard players set $5 healing_cool 5
scoreboard players set $10 healing_cool 10

# tempに体力を代入
    scoreboard players operation $temp healing_cool = @s Health
# tempを100倍
    scoreboard players operation $temp healing_cool *= $100 healing_cool
# temp_healingに100を代入
    scoreboard players set $temp_healing healing_cool 100
# temp_healingにgeneric.healing_speedを足す
    scoreboard players operation $temp_healing healing_cool += @s generic.healing_speed
# 回復バフを足す
    scoreboard players operation $temp healing_cool += $temp_healing healing_cool

# 回復エフェクト
    execute at @s positioned ~ ~1 ~ run particle minecraft:wax_on ^ ^ ^0.5 0.3 0.3 0.3 7 5 force @s
    #execute at @s run playsound minecraft:entity.wandering_trader.drink_potion player @s ~ ~ ~ 1 2

# tempをScoreTohealthに代入
    scoreboard players operation @s ScoreToHealth = $temp healing_cool

# リセット
    scoreboard players reset $temp healing_cool
    scoreboard players reset $temp_healing healing_cool
    scoreboard players reset $100 healing_cool
# ct
    scoreboard players set @s healing_cool 15

#execute at @s run playsound block.glass.break player @s
