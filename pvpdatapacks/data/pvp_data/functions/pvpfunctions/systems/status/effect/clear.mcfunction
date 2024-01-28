#> pvp_data:pvpfunctions/systems/status/effect/clear
#
# 実行者の指定のステータスのバフまたはデバフを削除します。
#
# @input
#   args
#       name: string ステータス名
#
# @api

#　一時オブジェクト
    #declare objective system.status.effect.calc_modifier
    scoreboard objectives add system.status.effect.calc_modifier dummy

# 入力を取得
    $data modify storage temporary: _ set value { name: "$(name)", overwrite: true }

    #declare score_holder $modifier_depth
    scoreboard players set $modifier_depth system.status.effect.calc_modifier 0

    #declare score_holder $modifier_duration
    scoreboard players set $modifier_duration system.status.effect.calc_modifier 0

# 代入
    execute if data storage temporary: {_: {name: "generic.attack"}} run function pvp_data:pvpfunctions/systems/status/effect/types/generic.attack

    execute if data storage temporary: {_: {name: "generic.attack_speed"}} run function pvp_data:pvpfunctions/systems/status/effect/types/generic.attack_speed

    execute if data storage temporary: {_: {name: "generic.speed"}} run function pvp_data:pvpfunctions/systems/status/effect/types/generic.speed

    execute if data storage temporary: {_: {name: "generic.defense"}} run function pvp_data:pvpfunctions/systems/status/effect/types/generic.defense

    execute if data storage temporary: {_: {name: "generic.max_health"}} run function pvp_data:pvpfunctions/systems/status/effect/types/generic.max_health

# 適用
    function pvp_data:pvpfunctions/systems/status/update

# リセット
    execute if data storage temporary: {_: {name: "generic.attack"}} run scoreboard players reset @s generic.attack.effect_duration

    execute if data storage temporary: {_: {name: "generic.attack_speed"}} run scoreboard players reset @s generic.attack_speed.effect_duration

    execute if data storage temporary: {_: {name: "generic.speed"}} run scoreboard players reset @s generic.defense.effect_duration

    execute if data storage temporary: {_: {name: "generic.defense"}} run scoreboard players reset @s generic.max_health.effect_duration

    execute if data storage temporary: {_: {name: "generic.max_health"}} run scoreboard players reset @s generic.speed.effect_duration

    scoreboard objectives remove system.status.effect.calc_modifier

    data remove storage temporary: _
