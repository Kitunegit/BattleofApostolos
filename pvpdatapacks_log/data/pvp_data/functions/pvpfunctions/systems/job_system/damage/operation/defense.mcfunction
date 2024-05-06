#> pvp_data:pvpfunctions/systems/job_system/damage/operation/defense
#
# @within function pvp_data:pvpfunctions/systems/job_system/damage/operation/

# 防御力を引く
    #declare score_holder $defense_damage
    scoreboard players operation $defense_damage damage.apply-temporary = @s generic.defense

    scoreboard players add $defense_damage damage.apply-temporary 0

    #めも: ダメージ = 攻撃力 - 攻撃力 * 防御力 / 200

    scoreboard players operation $defense_damage damage.apply-temporary *= @s damage.apply-temporary

    scoreboard players set #constant damage.apply-temporary 20000

    scoreboard players operation $defense_damage damage.apply-temporary /= #constant damage.apply-temporary

    scoreboard players operation @s damage.apply-temporary -= $defense_damage damage.apply-temporary
