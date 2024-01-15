#> pvp_data:pvpfunctions/systems/job_system/damage/defense_operation
#
# エンティティそれぞれの防御力の演算を行います。
#
# @within function pvp_data:pvpfunctions/systems/job_system/damage/apply

# 自身に与えるダメージを代入
    scoreboard players operation @s damage.apply-temporary = $total_damage damage.apply-temporary

# 防御力を引く
    #declare score_holder $defense_damage
    scoreboard players operation $defense_damage damage.apply-temporary = @s generic.defense

    scoreboard players add $defense_damage damage.apply-temporary 0

    # めも: ダメージ = 攻撃力 - 攻撃力 * 防御力 / 200

    scoreboard players operation $defense_damage damage.apply-temporary *= @s damage.apply-temporary

    scoreboard players set #constant damage.apply-temporary 20000

    scoreboard players operation $defense_damage damage.apply-temporary /= #constant damage.apply-temporary

    scoreboard players operation @s damage.apply-temporary -= $defense_damage damage.apply-temporary

# 攻撃の種類の判定
    # 定数
        scoreboard players set #constant damage.apply-temporary 4

    # 半チャージ
        execute if data storage temporary: {attack_type: "not_charged"} run scoreboard players operation @s damage.apply-temporary /= #constant damage.apply-temporary

    # 最大チャージ (1.0倍なのでそのまま)
        #execute if data storage temporary: {attack_type: "max_charged"}

    # 最大チャージ + クリティカル
        # 1.5倍にするためにいったん15倍
            scoreboard players set #constant damage.apply-temporary 15

            execute if data storage temporary: {attack_type: "max_charged_critical"} run scoreboard players operation @s damage.apply-temporary *= #constant damage.apply-temporary

        # 15倍されたものを10分の1にする
            scoreboard players set #constant damage.apply-temporary 10

            execute if data storage temporary: {attack_type: "max_charged_critical"} run scoreboard players operation @s damage.apply-temporary /= #constant damage.apply-temporary

# ストレージに再代入
    execute store result storage temporary: value.amount float 0.01 run scoreboard players get @s damage.apply-temporary

# 与える
    function pvp_data:pvpfunctions/systems/job_system/damage/hurt with storage temporary: value
