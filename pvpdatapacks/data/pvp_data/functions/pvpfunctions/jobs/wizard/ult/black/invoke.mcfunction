#> pvp_data:pvpfunctions/jobs/wizard/ult/black/invoke
#
# 黒ウルトスキル発動処理
#
# @internal

# 対象を取得
    execute at @s run tag @e[tag=player,limit=1,sort=nearest,distance=0.1..4] add wizard.ult_target
# 演出
    execute at @s run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..30] ~ ~ ~ 0.5 1.2
    execute at @s run playsound entity.warden.death player @a[distance=..30] ~ ~ ~ 1 1.7
    execute at @s run playsound minecraft:block.enchantment_table.use player @a[distance=..30] ~ ~ ~ 1 0.8
    execute at @e[tag=wizard.ult_target] run particle minecraft:block minecraft:sculk ~ ~ ~ 0.4 0.8 0.4 0.05 150
# 自傷させる
    function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage:{amount: 20f, type: "generic"},knockback:{}, target: "@s"}
# 対象にダメージを与える
    function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage:{amount: 30f, type: "pvp_data:wizard/wizard_normal_magic"},knockback:{}, target: "@e[tag=wizard.ult_target]"}
# リセット
    tag @e[tag=wizard.ult_target] remove wizard.ult_target