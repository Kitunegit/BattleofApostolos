#> pvp_data:pvpfunctions/jobs/assassin/passive/passive
#
# 暗殺者パッシブ 常時実行
#
# @internal

# 自身にタグ付与
    tag @s add Assassin.Passive
# 発見度を減少させる
    scoreboard players remove @s[scores={passive_count=1..}] passive_count 1
# 見られていたらLook関数に飛ばす
    execute as @a[tag=!Assassin.Passive] if predicate pvp_data:look_assasin as @a[tag=Assassin.Passive] run function pvp_data:pvpfunctions/jobs/assassin/passive/look
# 自身のタグを除去
    tag @s remove Assassin.Passive