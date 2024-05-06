#> pvp_data:pvpfunctions/jobs/assassin/ult/start
#
# 暗殺者ウルト開始処理
#
# @internal

# 条件不一致処理
    tag @s add assassin.ult_check
    execute at @s at @e[tag=player,distance=0.1..,limit=1,sort=nearest,tag=!assassin.ult_check] positioned ^ ^ ^-5 unless entity @s[distance=..4.9] run return 0
    tag @s remove assassin.ult_check
# タグ付ける
    tag @s add assassin.ult
# チャージ状態にする
    function pvp_data:pvpfunctions/systems/job_system/charge/apply {isMoving:false,isRotation:true,isCheckHealth:16,duration:100}
    effect give @s blindness 5 25 true
# CT状態にする
    item replace entity @s hotbar.3 with barrier{CustomModelData:63,display:{Name:'{"translate":"boa.item.assassin.ult","color":"yellow","bold":true,"italic":false}',Lore:['{"translate":"boa.lore.assassin.ult.1","color":"white","italic":false}','{"translate":"boa.lore.assassin.ult.2","color":"white","italic":false}','{"translate":"boa.status.use_condition","color":"gray","italic":false}','{"translate":"boa.status.other.assassin_ult.condition","color":"white","italic":false}','{"translate":"boa.status.use_details","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"translate":"boa.status.damage","color":"white","bold":true,"italic":false},{"text":"999","color":"dark_green","bold":true,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"translate":"boa.status.charge_duration","color":"white","bold":false},{"text":"0:05","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"translate":"boa.status.cool","color":"white","bold":true},{"text":"1:30","color":"dark_green","bold":false}]']},data: ["no_drop"]} 1
    scoreboard players set @s ult_cool 90