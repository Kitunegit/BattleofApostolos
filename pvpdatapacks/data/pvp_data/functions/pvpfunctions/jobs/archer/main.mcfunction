#弓兵-imageColor_green

#矢処理
    #矢常時実行
        execute if entity @e[type=arrow] run function pvp_data:pvpfunctions/jobs/archer/arrow
#常時実行
    function pvp_data:pvpfunctions/jobs/archer/skill/1/main
    function pvp_data:pvpfunctions/jobs/archer/skill/2/main
    function pvp_data:pvpfunctions/jobs/archer/ult/main
    function pvp_data:pvpfunctions/jobs/archer/passive/tick
#射撃ダメアップ
    execute as @e[type=arrow] run data merge entity @s {damage:-0.984375}