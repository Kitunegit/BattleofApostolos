#> pvp_data:pvpfunctions/systems/border/init
#
# @within function pvp_data:pvpfunctions/systems/load

# ストレージ
    #declare storage border:

    execute unless data storage border: config.disabled_by_reloading run data modify storage border: config.disabled_by_reloading set value true

    execute if data storage border: {config: {disabled_by_reloading: true}} run data modify storage border: config set value {enabled: false, disabled_by_reloading: true, center: [0.0d, 0.0d], radius: 50.0d, damage: {amount: 1.0f, type: "generic_kill"}}

# スコアボード
    #declare objective system.border
    scoreboard objectives add system.border dummy
