#> pvp_data:pvpfunctions/jobs/warrior/ult/start
#
# 戦士ウルト実行開始処理
#
# @internal

# 演出
    execute at @s run playsound block.beacon.deactivate player @a[distance=..10] ~ ~ ~ 0.7 0.5
# チャージ開始
    function pvp_data:pvpfunctions/systems/job_system/charge/apply {isMoving:false,isRotation:true,isCheckHealth:15,duration:200}
# モデル
    execute at @s rotated ~ 0 positioned ~ ~1 ~ run function animated_java:warrior_ult.model/summon
    execute at @s positioned ~ ~1 ~ run tag @e[type=#animated_java:root,type=item_display] add warrior.ult_model
    execute at @s as @e[tag=warrior.ult_model,limit=1] run function animated_java:warrior_ult.model/animations/ult_animation/play

# CTバリア付与
    item replace entity @s hotbar.3 with barrier{CustomModelData:43,display:{Name:'{"text":"クールタイム中です","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"深散波の究極系。","color":"white","italic":false}','{"text":"高くジャンプし、高威力の波動を放つ。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"飛翔攻撃:","color":"white","bold":true,"italic":false},{"text":"999","color":"dark_green","bold":true,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"必要詠唱時間","color":"white","bold":false},{"text":"0:04","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"4:00","color":"dark_green","bold":false}]']},data: ["no_drop"]} 1
# スコア設定
    scoreboard players set @s ult_count 120
    scoreboard players set @s ult_cool 120
