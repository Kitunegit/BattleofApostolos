#> pvp_data:pvpfunctions/jobs/assassin/skill/2/eyes/hit
#
# 暗殺者スキル2 眼破裂処理
#
# @internal

execute at @s run particle dust 0 0 0 2 ^ ^ ^-3 1 1 1 1 200
execute at @s run playsound item.glow_ink_sac.use player @a[distance=..10] ~ ~ ~ 15 1
execute at @s run effect give @a[distance=..3] blindness 5 3 true
say Hits
kill @s