function #oh_my_dat:please
#function pvp_data:pvpfunctions/systems/ui/text with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]

# passive_barの表示
    execute as @a if score @s system.ui.passive_bar.max = @s system.ui.passive_bar.max run function pvp_data:pvpfunctions/systems/ui/passive_bar/tick
