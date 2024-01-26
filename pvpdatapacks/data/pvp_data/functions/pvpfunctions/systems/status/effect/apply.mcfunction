#> pvp_data:pvpfunctions/systems/status/effect/apply
#
# 実行者の指定のステータスにバフまたはデバフを適用します。
#
# @input
#   args
#       name: string ステータス名
#       depth: int バフ／デバフの大きさ 0より大きければバフ、小さければデバフ (100倍)
#       duration: int バフ／デバフの効果時間 tick単位で指定
#       overwrite: byte 現在付与されているバフ／デバフを考慮しない場合はtrue。
#
# @api

#　一時オブジェクト
    #declare objective system.status.effect.calc_modifier
    scoreboard objectives add system.status.effect.calc_modifier dummy

# 入力を取得
    $data modify storage temporary: _ set value { name: "$(name)", depth: $(depth), duration: $(duration), overwrite: $(overwrite)b }

    #declare score_holder $modifier_depth
    execute store result score $modifier_depth system.status.effect.calc_modifier run data get storage temporary: _.depth

    #declare score_holder $modifier_duration
    execute store result score $modifier_duration system.status.effect.calc_modifier run data get storage temporary: _.duration

# 代入
    execute if data storage temporary: {_: {name: "generic.attack"}} run function pvp_data:pvpfunctions/systems/status/effect/types/generic.attack

    execute if data storage temporary: {_: {name: "generic.attack_speed"}} run function pvp_data:pvpfunctions/systems/status/effect/types/generic.attack_speed

    execute if data storage temporary: {_: {name: "generic.speed"}} run function pvp_data:pvpfunctions/systems/status/effect/types/generic.speed

    execute if data storage temporary: {_: {name: "generic.defense"}} run function pvp_data:pvpfunctions/systems/status/effect/types/generic.defense

    execute if data storage temporary: {_: {name: "generic.max_health"}} run function pvp_data:pvpfunctions/systems/status/effect/types/generic.max_health

# 適用
    function pvp_data:pvpfunctions/systems/status/update

# リセット
    scoreboard objectives remove system.status.effect.calc_modifier

    data remove storage temporary: _
