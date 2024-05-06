#バフをbuffsに代入する
$data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buffs_1 set value "$(0)$(3)$(5)$(6)$(8)$(8)$(9)$(10)$(13)$(14)$(15)"
$data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buffs_2 set value "$(16)$(17)$(20)$(22)$(23)$(24)$(25)$(27)$(28)$(30)"

$data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuffs_1 set value "$(1)$(2)$(4)$(7)$(11)$(12)$(18)$(19)"
$data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuffs_2 set value "$(21)$(26)$(29)$(31)$(32)"