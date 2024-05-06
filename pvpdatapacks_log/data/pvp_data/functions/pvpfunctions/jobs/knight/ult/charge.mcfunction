#> pvp_data:pvpfunctions/jobs/knight/ult/charge
#
# 騎士ウルトチャージ中処理
#
# @internal

# 剣を視点に合わせる
    execute at @s[tag=knight_ult.FirstCharge] rotated as @s anchored eyes run tp @e[tag=knight_ult] ^-0.5 ^-1.25 ^1 ~ 0
# 最初のチャージが終わったら視点が移動できないチャージを始める
    execute as @s[tag=Charge.Stop,tag=knight_ult.FirstCharge] run function pvp_data:pvpfunctions/jobs/knight/ult/charge/first_fin
# 2回目のチャージが終わったら斬撃を出す
    execute as @s[tag=Charge.Stop,tag=!knight_ult.FirstCharge] run function pvp_data:pvpfunctions/jobs/knight/ult/slash/fire
# 阻害処理
    execute as @s[tag=Charge.Miss] run function pvp_data:pvpfunctions/jobs/knight/ult/charge/miss