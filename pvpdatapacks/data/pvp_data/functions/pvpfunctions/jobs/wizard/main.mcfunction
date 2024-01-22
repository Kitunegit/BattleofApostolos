#魔導士-imageColor_white/black
function pvp_data:pvpfunctions/jobs/wizard/attack/main
execute unless entity @s[tag=wizard_white] unless entity @s[tag=wizard_black] run function pvp_data:pvpfunctions/jobs/wizard/skill/1/main
execute if entity @s[tag=wizard_white] run function pvp_data:pvpfunctions/jobs/wizard/skill/2/main
execute if entity @s[tag=wizard_black] run function pvp_data:pvpfunctions/jobs/wizard/skill/3/main
execute if score @s sneaking matches 1.. run function pvp_data:pvpfunctions/jobs/wizard/passive/sneaking