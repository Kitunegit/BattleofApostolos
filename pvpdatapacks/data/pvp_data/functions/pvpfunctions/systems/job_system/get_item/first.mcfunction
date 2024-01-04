say changed!
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:barrier"}}] run function pvp_data:pvpfunctions/systems/job_system/get_item/skill/1
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:barrier"}}] run function pvp_data:pvpfunctions/systems/job_system/get_item/skill/2
function pvp_data:pvpfunctions/systems/job_system/get_item/weapon/real
advancement revoke @s only pvp_data:system/changed_inventory
kill @e[type=item]
#メインハンドじゃなくて各スロットにする