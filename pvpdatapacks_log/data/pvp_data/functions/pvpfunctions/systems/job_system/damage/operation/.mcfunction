#> pvp_data:pvpfunctions/systems/job_system/damage/operation/
#
# エンティティそれぞれの防御力の演算を行います。
#
# @within
#   function
#       pvp_data:pvpfunctions/systems/job_system/damage/apply
#       pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed

# 自身に与えるダメージを代入
    execute if data storage temporary: {config: {fixed: false}} run scoreboard players operation @s damage.apply-temporary = $total_damage damage.apply-temporary

# 防御力を引く
    function pvp_data:pvpfunctions/systems/job_system/damage/operation/defense

# 攻撃の種類の判定
    execute if data storage temporary: {config: {fixed: false}} run function pvp_data:pvpfunctions/systems/job_system/damage/operation/attack_types

# シールドによる防御
    data modify storage temporary: value.blocked set value false

    execute unless data storage temporary: {config: {ignore_shield: true}} if score @s damage.shield.durability matches 1.. run function pvp_data:pvpfunctions/systems/job_system/damage/operation/shield/

# ストレージに再代入
    # 整数部分を取得
        #declare score_holder $integer
        scoreboard players operation $integer damage.apply-temporary = @s damage.apply-temporary

        execute unless data storage temporary: {value: {blocked: false}} run scoreboard players operation $integer damage.apply-temporary = $temporary damage.apply-temporary

        scoreboard players set #constant damage.apply-temporary 100

        scoreboard players operation $integer damage.apply-temporary /= #constant damage.apply-temporary

        scoreboard players operation $integer damage.apply-temporary *= #constant damage.apply-temporary

    # 小数部分を取得
        #declare score_holder $decimal
        scoreboard players operation $decimal damage.apply-temporary = @s damage.apply-temporary

        execute unless data storage temporary: {value: {blocked: false}} run scoreboard players operation $decimal damage.apply-temporary = $temporary damage.apply-temporary

        scoreboard players operation $decimal damage.apply-temporary -= $integer damage.apply-temporary

    # 文字列化
        execute store result storage temporary: value.display_integer int 0.01 run scoreboard players get $integer damage.apply-temporary

        execute store result storage temporary: value.display_decimal int 1 run scoreboard players get $decimal damage.apply-temporary

        data modify storage temporary: value.display_decimal set string storage temporary: value.display_decimal 0 2

        execute if score $decimal damage.apply-temporary matches 0..9 run data modify storage temporary: value.display_zero set value "0"
        execute unless score $decimal damage.apply-temporary matches 0..9 run data modify storage temporary: value.display_zero set value ""

        execute store result storage temporary: value.amount float 0.01 run scoreboard players get @s damage.apply-temporary

# 与える
    function pvp_data:pvpfunctions/systems/job_system/damage/hurt with storage temporary: value
