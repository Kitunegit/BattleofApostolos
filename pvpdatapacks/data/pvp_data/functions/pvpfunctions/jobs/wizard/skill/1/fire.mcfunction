#> pvp_data:pvpfunctions/jobs/wizard/skill/1/fire
#
# 魔導士スキル射出
#
# @internal

# ビーム召喚＆調整
    execute at @s run summon marker ^ ^ ^1 {Tags:[wizard_no_atr_beam]}
    execute at @e[tag=wizard_no_atr_beam,type=marker] rotated as @s run tp @e[tag=wizard_no_atr_beam,type=marker] ~ ~ ~ facing ^ ^ ^1
    execute as @e[tag=wizard_no_atr_beam,type=marker] at @s run tp @s ~ ~1.4 ~
# 演出
    execute at @s run playsound minecraft:block.enchantment_table.use player @a[distance=..15] ~ ~ ~ 1 1.2
    execute at @s run playsound minecraft:entity.warden.death player @a[distance=..15] ~ ~ ~ 1 0.1
# 飛ばす
    tag @a[tag=wizard.skill1_ready] add wizard.magic_fire
    execute as @e[tag=wizard_no_atr_beam,type=marker] run function pvp_data:pvpfunctions/jobs/wizard/skill/1/marker
    tag @a[tag=wizard.skill1_ready] remove wizard.magic_fire
# リセット
    tag @s remove wizard.skill1_ready