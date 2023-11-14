#騎士
execute as @a if entity @s[nbt={SelectedItem:{tag:{CustomModelData:6},id:"minecraft:stick"}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{CustomModelData:6}
execute as @a if entity @s[nbt=!{SelectedItem:{tag:{CustomModelData:6},id:"minecraft:stick"}},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}]},nbt=!{SelectedItem:{tag:{CustomModelData:6},id:"minecraft:carrot_on_a_stick"}},] run tag @s add assassin_chages
clear @a[tag=assassin_chages] carrot_on_a_stick{CustomModelData:6}
give @a[tag=assassin_chages] stick{CustomModelData:6}
tag @a[tag=assassin_chages] remove assassin_chages