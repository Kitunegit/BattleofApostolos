#> pvp_data:pvpfunctions/jobs/wizard/skill/1/marker
#
# 魔導士スキル1マーカー動作
#
# @internal

# 射程カウント
    scoreboard players add @s skill_1_count 1
# 演出
    execute at @s run particle minecraft:dust 0.59 0.63 0.65 2 ~ ~ ~ 0.4 0.4 0.4 0.4 20
# ダメージ
    execute at @s positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0] if score @s skill_1_count matches 2.. as @a[tag=wizard.magic_fire] run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage:{amount: 7f, type: "pvp_data:wizard/wizard_normal_magic"},knockback:{}, target: "@e[tag=player,dx=0]"}
    execute at @s positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0] if score @s skill_1_count matches 2.. if entity @e[tag=player,dx=0] as @a[tag=wizard.magic_fire] at @s run playsound minecraft:entity.experience_orb.pickup player @a[distance=..15] ~ ~ ~ 0.1 0.1
# 飛ばす
    execute at @s unless function better_collision:api/ run tp @s ^ ^ ^1
    execute at @s if function better_collision:api/ run kill @s
# 射程制限
    execute if score @s skill_1_count matches 30.. run kill @s
    execute if score @s skill_1_count matches ..30 run function pvp_data:pvpfunctions/jobs/wizard/skill/1/marker