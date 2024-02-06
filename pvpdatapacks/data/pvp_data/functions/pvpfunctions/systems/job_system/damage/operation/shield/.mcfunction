#> pvp_data:pvpfunctions/systems/job_system/damage/operation/shield/
#
# @within function pvp_data:pvpfunctions/systems/job_system/damage/operation/

# 音とか
    playsound block.anvil.land master @a ~ ~ ~ 3 2

    particle crit ~ ~ ~ 0.4 0.8 0.4 0.0 20 force

# 球面描画準備
    #declare tag damage.shield.center
    execute at @s run summon marker ~ ~0.75 ~ {Tags: ["damage.shield.center"]}

    #declare tag damage.shield.axis
    summon marker ~ ~ ~ {Tags: ["damage.shield.axis"], Rotation: [0.0f, 90.0f]}

    summon marker ~ ~ ~ {Tags: ["damage.shield.axis"], Rotation: [180.0f, -90.0f]}

# モンテカルロ法による球面描画
    # あまりに長すぎたので、まだDHPが対応してないけど改行機能使ってます
    execute as @e[tag=damage.shield.center] at @e[tag=damage.shield.axis] at @e[tag=damage.shield.axis] at @e[tag=damage.shield.axis] at @e[tag=damage.shield.axis] \
    at @e[tag=damage.shield.axis] at @e[tag=damage.shield.axis] at @e[tag=damage.shield.axis] at @s \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] rotated ~ 0 positioned ^ ^ ^4 \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] positioned ^4 ^ ^ \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] positioned ^ ^ ^4 \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] rotated ~ 0 positioned ^ ^ ^2 \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] positioned ^2 ^ ^ \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] positioned ^ ^ ^2 \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] rotated ~ 0 positioned ^ ^ ^1 \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] positioned ^1 ^ ^ \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] positioned ^ ^ ^1 \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] rotated ~ 0 positioned ^ ^ ^0.5 \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] positioned ^0.5 ^ ^ \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] positioned ^ ^ ^0.5 \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] rotated ~ 0 positioned ^ ^ ^0.25 \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] positioned ^0.25 ^ ^ \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] positioned ^ ^ ^0.25 \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] rotated ~ 0 positioned ^ ^ ^0.125 \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] positioned ^0.125 ^ ^ \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] positioned ^ ^ ^0.125 \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] rotated ~ 0 positioned ^ ^ ^0.0625 \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] positioned ^0.0625 ^ ^ \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] positioned ^ ^ ^0.0625 \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] rotated ~ 0 positioned ^ ^ ^0.03125 \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] positioned ^0.03125 ^ ^ \
    rotated as @e[tag=damage.shield.axis,sort=random,limit=1] positioned ^ ^ ^0.03125 \
    facing entity @s feet \
    positioned as @s[distance=..8] \
    positioned ^ ^ ^1.5 \
    run particle dust 0 0.75 1 1 ~ ~ ~ 0.0 0.0 0.0 0.0 1 force

# リセット
    kill @e[tag=damage.shield.center]

    kill @e[tag=damage.shield.axis]

# 計算
    scoreboard players operation $temporary damage.apply-temporary = @s damage.apply-temporary

    scoreboard players operation @s damage.apply-temporary -= @s damage.shield.durability

    execute if score @s damage.apply-temporary matches ..-1 run scoreboard players set @s damage.apply-temporary 0

    scoreboard players operation @s damage.shield.durability -= $temporary damage.apply-temporary

    execute store result storage temporary: value.blocked float 0.01 run scoreboard players get $temporary damage.apply-temporary

    execute if score @s damage.shield.durability matches ..0 run function pvp_data:pvpfunctions/systems/job_system/damage/operation/shield/break
