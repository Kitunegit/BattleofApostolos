#> pvp_data:pvpfunctions/systems/advancements/shield_blocked
#
# シールドで防いだ時に呼び出されます
#
# @internal

advancement revoke @s only pvp_data:system/shield_blocked
execute if score @s jobscore matches 8 run function pvp_data:pvpfunctions/jobs/guardian/shield/blocked
say blocked!