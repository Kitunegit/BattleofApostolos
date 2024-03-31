kill @e[type=marker,tag=border_center]
$function pvp_data:pvpfunctions/systems/border/set {config:{center: [$(start_vector_x)d, $(start_vector_z)d],radius: 160.0d,damage: {amount: 1.0f,type: "generic_kill"}}}
$execute as @a run spreadplayers $(start_vector_x) $(start_vector_z) 15 30 under -30 true @s
bossbar set minecraft:area players @a
scoreboard players set area_time area_timer 1
scoreboard players set area_phase area_timer 1
tellraw @a {"text": "収縮が開始しました"}