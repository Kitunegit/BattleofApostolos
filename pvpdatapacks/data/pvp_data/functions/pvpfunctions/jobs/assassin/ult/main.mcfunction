#> pvp_data:pvpfunctions/jobs/assassin/ult/main
#
# 暗殺者ウルト常時実行
#
# @internal

# 発動検知
    execute if predicate pvp_data:r_click/cmd63 if score @s ult_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/assassin/ult/start
# ウルト発動中処理
    execute if entity @s[tag=assassin.ult] run function pvp_data:pvpfunctions/jobs/assassin/ult/ult_main
#CT終了処理
    execute if score @s ult_cool matches 1 run item replace entity @s hotbar.3 with carrot_on_a_stick{CustomModelData:63,display:{Name:'{"text":"奇襲突撃　滅殺","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"暗殺者の究極の力","color":"white","italic":false}','{"text":"背後から一心不乱に突撃する。","color":"white","italic":false}','{"text":"─────発動条件─────","color":"gray","italic":false}','{"text":"敵の背後にいる時のみ発動可能","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"突進攻撃:","color":"white","bold":true,"italic":false},{"text":"999","color":"dark_green","bold":true,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"必要詠唱時間","color":"white","bold":false},{"text":"0:05","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"2:00","color":"dark_green","bold":false}]']}} 1