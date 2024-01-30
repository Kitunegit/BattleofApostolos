
# 発動時演出
    execute at @s run playsound block.anvil.land player @a[distance=..10] ~ ~ ~ 0.5 2
    execute at @s run particle crit ~ ~1 ~ 1 1 1 0 80 force
    execute at @s run particle dust 0 100000000 100000000 1 ~ ~1 ~ 1 1.3 1 0 80 force
    item replace entity @s hotbar.1 with barrier{display:{Name:'{"text":"クールタイム中です","color":"blue","bold":true,"italic":false}',Lore:['{"text":"騎士が度重なる鍛錬で得た、","color":"white","italic":false}','{"text":"極意の技","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"攻撃速度","color":"white","bold":true,"italic":false},{"text":"x5","color":"dark_green","bold":false},{"text":"(0:15)","color":"dark_green","bold":false}]','[{"text":"\\uE018","color":"white","italic":false},{"text":"移動速度","color":"white","bold":true,"italic":false},{"text":"-20%","color":"dark_red","bold":false},{"text":"(0:15)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":"0:15","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:40","color":"dark_green","bold":false}]']},CustomModelData:31} 41

# 発動効果付与

    function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.attack_speed,depth:140,duration:200,overwrite:false}
    function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.speed,depth:-2,duration:200,overwrite:false}

# 後処理
    scoreboard players set @s skill_1_cool 800
    scoreboard players set @s skill_1_count 200
