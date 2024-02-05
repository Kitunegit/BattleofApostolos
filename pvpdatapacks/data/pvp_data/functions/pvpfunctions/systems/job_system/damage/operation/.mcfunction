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
    execute unless data storage temporary: {config: {ignore_shield: true}} if score @s damage.shield.durability matches 1.. run function pvp_data:pvpfunctions/systems/job_system/damage/operation/shield/

# ストレージに再代入
    execute store result storage temporary: value.amount float 0.01 run scoreboard players get @s damage.apply-temporary

# 与える
    function pvp_data:pvpfunctions/systems/job_system/damage/hurt with storage temporary: value
