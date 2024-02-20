#> pvp_data:pvpfunctions/jobs/guardian/shield/repair
#
# シールド修復処理
#
# @internal

# リセット
    scoreboard players reset @s guardian.repair_cool
    scoreboard players set @s guardian.shield_count 0
# アイテムを渡す
    item replace entity @s weapon.offhand with shield{display:{Name:'{"text":"守護者の蒼色の盾","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"綺麗な蒼色に染まった","color":"white","italic":false}','{"text":"この盾で未来を守ろう。","color":"white","italic":false}','{"text":"─────防具効果─────","color":"gray","italic":false}','[{"text":"\\uE014","color":"white","italic":false},{"text":"攻撃を防ぐ","color":"white","bold":true,"italic":false},{"text":"∞","color":"green","bold":false,"italic":false}]']},Unbreakable:0b,CustomModelData:8,HideFlags:6,data: ["no_drop"]} 1
# 演出
    execute at @s run playsound block.anvil.use player @s ~ ~ ~ 1 1.2