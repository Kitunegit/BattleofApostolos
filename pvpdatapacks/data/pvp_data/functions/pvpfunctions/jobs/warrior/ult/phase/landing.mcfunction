#> pvp_data:pvpfunctions/jobs/warrior/ult/phase/landing
#
# 戦士ウルト着地処理
#
# @internal

# 演出
    execute at @s run particle dust 0.745 0.4 0 2 ~ ~ ~ 2 0.75 2 0.4 250
    execute at @s run particle block redstone_block ~ ~ ~ 4 0.75 4 0.1 45
    execute at @s run playsound entity.player.attack.knockback player @a[distance=..10] ~ ~ ~ 3 0.1
# モデルアニメーション変更
    execute at @s as @e[tag=warrior.ult_model,limit=1] run function animated_java:warrior_ult.model/animations/ult_fall/play
    execute at @s run tag @e[tag=warrior.ult_model,limit=1,sort=nearest] add warrior.ult_model.kill
    schedule function pvp_data:pvpfunctions/jobs/warrior/ult/kill_model 10t
# ダメージ
    # 自爆回避
        tag @s add Warrior.Ult_Avoid
    # 与える
    execute at @s run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 777.0f,type: "pvp_data:warrior/warrior_ult"},knockback: {horizontal: 2.5d,vertical: 3.5d},target: "@e[tag=player,r=8,tag=!Warrior.Ult_Avoid]"}
    execute at @s if entity @e[tag=player,distance=..8,tag=!Warrior.Ult_Avoid] at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 3 0.1
# リセット
    tag @s remove Warrior.Ult_Jump
    tag @s remove Warrior.Ult_Avoid
    tag @s remove Warrior.Ult
say Land