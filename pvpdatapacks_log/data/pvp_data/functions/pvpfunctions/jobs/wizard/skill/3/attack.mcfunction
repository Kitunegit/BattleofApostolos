
# 対象にタグを付与
    execute at @a[tag=wizard.skill_attack] run tag @e[tag=player,tag=!wizard.skill_attack,limit=1,sort=nearest,distance=..4] add wizard.skill_trgt
# 対象に盲目を付与
    effect give @e[tag=wizard.skill_trgt] blindness 5 1 true
# 対象に鈍化を付与
    execute as @e[tag=wizard.skill_trgt] run function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.speed,depth:-3,duration:100,overwrite:false}
# 解除処理をスケジュール
    schedule function pvp_data:pvpfunctions/jobs/wizard/skill/3/clear_debuff 5s append
# 発動演出
    execute as @a[tag=wizard.skill_attack] at @s run particle dust 0 0 0 3 ~ ~ ~ 2 2 2 0.1 200
    execute as @a[tag=wizard.skill_attack] at @s run playsound block.beacon.power_select player @a[distance=..10] ~ ~ ~ 1 1
# リセット
    tag @e remove wizard.skill_attack