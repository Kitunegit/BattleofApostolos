#> pvp_data:pvpfunctions/jobs/wizard/ult/black/miss
#
# 中断処理
#
# @internal

# カウントリセット
    scoreboard players reset @s ult_count
# クールタイム短縮
    scoreboard players set @s ult_cool 50
# 演出
    execute at @s run playsound block.beacon.deactivate player @a[distance=..10] ~ ~ ~ 1 1.2
    execute at @s run playsound minecraft:block.note_block.bass player @a[distance=..10] ~ ~ ~ 1 0.1
# 強制終了の処理を流す
    function pvp_data:pvpfunctions/systems/job_system/charge/outage