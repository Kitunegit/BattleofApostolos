#弓兵-imageColor_green

#矢処理
    #矢常時実行
        tag @s add Archer.Temp
        execute as @e[type=arrow] at @s on origin if entity @s[tag=Archer.Temp] run tag @e[type=arrow,limit=1,sort=nearest] add Archer.Arrow
        execute if entity @e[tag=Archer.Arrow] run function pvp_data:pvpfunctions/jobs/archer/arrow
#常時実行
    function pvp_data:pvpfunctions/jobs/archer/skill/1/main
    function pvp_data:pvpfunctions/jobs/archer/skill/2/main
    function pvp_data:pvpfunctions/jobs/archer/ult/main
    function pvp_data:pvpfunctions/jobs/archer/passive/tick
# 射撃ダメ調整
    execute as @e[tag=Archer.Arrow] run data merge entity @s {damage:-0.984375}
# 関連マーカータグ付与
    execute as @e[type=marker] if score @s PlayerID = @p[tag=Archer.Temp] PlayerID run tag @s add Archer.Marker
# タグリセット
    tag @s remove Archer.Temp
    tag @s remove Archer.Arrow