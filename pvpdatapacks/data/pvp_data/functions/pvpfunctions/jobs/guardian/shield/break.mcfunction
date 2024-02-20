#> pvp_data:pvpfunctions/jobs/guardian/shield/break
#
# シールドが破壊されたときに呼び出されます
#
# @internal

# 使用不可にする
    item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"守護者の蒼色の盾","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"綺麗な蒼色に染まった","color":"white","italic":false}','{"text":"この盾で未来を守ろう。","color":"white","italic":false}','{"text":"─────防具効果─────","color":"gray","italic":false}','[{"text":"\\uE014","color":"white","italic":false},{"text":"攻撃を防ぐ","color":"white","bold":true,"italic":false},{"text":"∞","color":"green","bold":false,"italic":false}]']},Unbreakable:0b,CustomModelData:84,HideFlags:6,data: ["no_drop"]} 1
# 演出
    execute at @s run playsound minecraft:ui.stonecutter.take_result player @a[distance=..15] ~ ~ ~ 1 0.75
    execute at @s run playsound minecraft:item.shield.break player @a[distance=..15] ~ ~ ~ 1 0.75
# ブレイク状態にする(デバフ)
    function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.speed,depth:-1,duration:60,overwrite:false}
    function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.defense,depth:-300,duration:60,overwrite:false}
# 修復までのCT
    scoreboard players set @s guardian.repair_cool 400