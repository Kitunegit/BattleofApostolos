#> pvp_data:pvpfunctions/jobs/assassin/passive/look
#
# 暗殺者パッシブ 見られていた時の処理
#
# @internal

# デバフ
    function pvp_data:pvpfunctions/systems/status/effect/apply {name:"generic.attack",depth:-400,duration:3,overwrite:true}
# 発見値上昇
    scoreboard players add @s[scores={passive_count=..2400}] passive_count 3
# 条件到達時、Reset関数に飛ばす
    execute if score @s passive_count matches 2400.. run function pvp_data:pvpfunctions/jobs/assassin/passive/reset