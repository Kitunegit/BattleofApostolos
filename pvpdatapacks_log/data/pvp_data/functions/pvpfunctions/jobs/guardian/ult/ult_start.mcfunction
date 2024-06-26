#> pvp_data:pvpfunctions/jobs/guardian/ult/ult_start
#
# 守護者ウルト開始処理
#
# @internal

# 発動演出
    execute at @s run playsound minecraft:item.trident.thunder player @a[distance=..10] ~ ~ ~ 0.7 1.5
    execute at @s run playsound entity.zombie.attack_wooden_door player @a[distance=..10] ~ ~ ~ 0.7 0.4
    execute at @s run particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 0.5 30
    execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 15
# モデル演出準備 
    execute at @s rotated ~ 0 positioned ~ ~100 ~ run function animated_java:guardian_ult/summon
    execute at @s positioned ~ ~100 ~ run tag @e[tag=aj.guardian_ult.rig_entity,limit=1,sort=nearest] add guardian.ult_model
    execute as @e[tag=guardian.ult_model] run function animated_java:guardian_ult/animations/rotation/play
    execute at @s positioned ~ ~100 ~ run tp @e[distance=..1,limit=1,sort=nearest,tag=guardian.ult_model] ~ ~-99 ~
# 効果付与
        function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.speed,depth:1,duration:300,overwrite:false}
        function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.defense,depth:150,duration:300,overwrite:false}
        function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.attack,depth:150,duration:300,overwrite:false}
# その他処理
    item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"クールタイム中です","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"時には限界を超える必要がある。","color":"white","italic":false}','{"text":"圧倒的な攻撃と防御を誇る守護者へと進化する。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE016","color":"white","italic":false},{"text":"鈍化解除","color":"white","bold":true,"italic":false},{"text":"(0:20)","color":"dark_green","bold":false}]','[{"text":"\\uE010","color":"white","bold":false,"italic":false},{"text":"攻撃力","color":"white","bold":true,"italic":false},{"text":"+6","color":"dark_green","bold":true},{"text":"(0:20)","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE014","color":"white","italic":false},{"text":"耐性","color":"white","bold":true,"italic":false},{"text":"+60%","color":"dark_green","bold":true},{"text":"(0:20)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":" 0:20","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"1:30","color":"dark_green","bold":false}]']},CustomModelData:83}
    scoreboard players set @s ult_count 300
    scoreboard players set @s ult_cool 90