#> pvp_data:pvpfunctions/systems/job_system/charge/no_rotation
#
# 視点移動不可能にさせるためのエンティティを召喚します
#
# @internal

# スコア割り振り
    execute unless score @s Charge.id = @s Charge.id store result score @s Charge.id run scoreboard players add $IdCore Charge.id 1

# マーカー関連処理
    # マーカー召喚
        execute at @s run summon marker ~ ~ ~ {Tags:["Charge.ViewPointSet"]}
    # マーカーの向きを変更
        execute at @s at @e[tag=Charge.ViewPointSet,tag=!Charge.facing] rotated as @s as @e[tag=Charge.ViewPointSet,tag=!Charge.facing] run tp @s ^ ^ ^10 facing ^ ^ ^1
    # マーカーにスコアを割り振る
        scoreboard players operation @e[tag=Charge.ViewPointSet,tag=!Charge.facing] Charge.id = @s Charge.id
    # マーカーにタグを付与
        tag @e[tag=Charge.ViewPointSet,tag=!Charge.facing] add Charge.facing