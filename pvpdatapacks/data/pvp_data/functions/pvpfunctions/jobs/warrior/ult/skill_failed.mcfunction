effect clear @s slowness
effect clear @s jump_boost
scoreboard players set @s ult_cool 60
execute at @s run playsound ui.button.click player @a[distance=..10]
 scoreboard players reset @s warrior_ult_timer
 function pvp_data:pvpfunctions/systems/job_system/charge/reset