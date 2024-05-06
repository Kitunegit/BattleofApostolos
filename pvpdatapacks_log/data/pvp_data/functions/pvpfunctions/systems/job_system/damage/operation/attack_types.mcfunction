#> pvp_data:pvpfunctions/systems/job_system/damage/operation/attack_types
#
# @within function pvp_data:pvpfunctions/systems/job_system/damage/operation/

# 攻撃の種類の判定
    # 半チャージ
        scoreboard players set #constant damage.apply-temporary 4

        execute if data storage temporary: {attack_type: "not_charged"} run scoreboard players operation @s damage.apply-temporary /= #constant damage.apply-temporary

    # 最大チャージ (1.0倍なのでそのまま)
        #execute if data storage temporary: {attack_type: "max_charged"}

    # 最大チャージ + クリティカル
        scoreboard players set #constant damage.apply-temporary 15

        execute if data storage temporary: {attack_type: "max_charged_critical"} run scoreboard players operation @s damage.apply-temporary *= #constant damage.apply-temporary

        scoreboard players set #constant damage.apply-temporary 10

        execute if data storage temporary: {attack_type: "max_charged_critical"} run scoreboard players operation @s damage.apply-temporary /= #constant damage.apply-temporary
