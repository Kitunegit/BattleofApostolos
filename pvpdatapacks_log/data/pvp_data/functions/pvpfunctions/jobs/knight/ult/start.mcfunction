#> pvp_data:pvpfunctions/jobs/knight/ult/start
#
# 騎士ウルト開始処理
#
# @within function pvp_data:pvpfunctions/jobs/knight/ult/main

# 音声演出
    execute at @s run playsound block.beacon.activate player @a[distance=..20] ~ ~ ~ 1 0.8
# ビジュアル演出
    team add Glowing.Red
    team join Glowing.Red @s
    team modify Glowing.Red color red
    effect give @s glowing 3 1 true
# チャージを開始
    tag @s add knight_ult.FirstCharge
    function pvp_data:pvpfunctions/systems/job_system/charge/apply {isMoving:false,isRotation:true,isCheckHealth:15,duration:30}
# アニメーション
    execute at @s rotated ~ 0 positioned ~ ~1 ~ run function animated_java:knight_sword/summon
    execute at @s positioned ~ ~1 ~ run tag @e[type=#animated_java:root,type=item_display] add knight_ult
    execute at @s as @e[tag=knight_ult,limit=1] run function animated_java:knight_sword/animations/test_ult/play
# アイテム
    item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"クールタイム中です","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"空間を割き、すべてを切り捨て進んでゆく。","color":"white","italic":false}','{"text":"悪には慈悲などない。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"斬撃継続時間","color":"white","bold":true,"italic":false},{"text":"(0:10)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"必要詠唱時間","color":"white","bold":false},{"text":" 0:03","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"2:00","color":"dark_green","bold":false}]']},CustomModelData:33,data: ["no_drop"]} 1