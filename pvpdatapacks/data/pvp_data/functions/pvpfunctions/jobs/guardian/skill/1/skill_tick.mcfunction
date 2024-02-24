#> pvp_data:pvpfunctions/jobs/guardian/skill/1/skill_tick
#
# スキル1の効果中の処理です
#
# @internal

# カウントダウン
    scoreboard players remove @s skill_1_count 1
# パーティクル
    execute at @s run particle minecraft:scrape ~ ~ ~ 0.55 0.5 0.55 0.01 1
# 規定値で終了
    execute at @s if score @s skill_1_count matches 1 run playsound minecraft:item.armor.equip_iron player @a[distance=..15] ~ ~ ~ 1 1.2
    execute if score @s skill_1_count matches 1 unless score @s guardian.repair_cool matches 1.. run item replace entity @s weapon.offhand with shield{display:{Name:'{"text":"守護者の蒼色の盾","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"綺麗な蒼色に染まった","color":"white","italic":false}','{"text":"この盾で未来を守ろう。","color":"white","italic":false}','{"text":"─────防具効果─────","color":"gray","italic":false}','[{"text":"\\uE014","color":"white","italic":false},{"text":"攻撃を防ぐ","color":"white","bold":true,"italic":false},{"text":"∞","color":"green","bold":false,"italic":false}]']},Unbreakable:0b,CustomModelData:8,HideFlags:6,data: ["no_drop"]} 1
    execute if score @s skill_1_count matches 1 run tag @s remove guardian.shield_strong
