#再度呼び出せるように実績を剥奪する
    advancement revoke @s only pvp_data:system/changed_effect
#個人ストレージにアクセス
    function #oh_my_dat:please
#リセット
    function pvp_data:pvpfunctions/systems/ui/reset
#バフの種類に応じて個人ストレージに絵文字データを保存しておく
    execute if entity @s[nbt={active_effects:[{id:"minecraft:absorption"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.0 set from storage effect string[0]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:blindness"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.2 set from storage effect string[2]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:conduit_power"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.3 set from storage effect string[3]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:dolphins_grace"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.5 set from storage effect string[5]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:fire_resistance"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.6 set from storage effect string[6]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:haste"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.8 set from storage effect string[8]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:health_boost"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.9 set from storage effect string[9]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:hero_of_the_village"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.10 set from storage effect string[10]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:instant_health"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.13 set from storage effect string[13]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.14 set from storage effect string[14]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:jump_boost"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.15 set from storage effect string[15]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:levitation"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.16 set from storage effect string[16]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:luck"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.17 set from storage effect string[17]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:night_vision"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.20 set from storage effect string[20]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.22 set from storage effect string[22]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.23 set from storage effect string[23]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:saturation"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.24 set from storage effect string[24]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:slow_falling"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.25 set from storage effect string[25]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:speed"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.27 set from storage effect string[27]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:strength"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.28 set from storage effect string[28]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:water_breathing"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff.30 set from storage effect string[30]
#デバフの種類に応じて個人ストレージに絵文字データを保存しておく
    execute if entity @s[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuff.1 set from storage effect string[1]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:darkness"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuff.4 set from storage effect string[4]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:glowing"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuff.7 set from storage effect string[7]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:hunger"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuff.11 set from storage effect string[11]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:instant_damage"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuff.12 set from storage effect string[12]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuff.18 set from storage effect string[18]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:nausea"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuff.19 set from storage effect string[19]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuff.21 set from storage effect string[21]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuff.26 set from storage effect string[26]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:unluck"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuff.29 set from storage effect string[29]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:weakness"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuff.31 set from storage effect string[31]
    execute if entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuff.32 set from storage effect string[32]
#バフ、デバフの絵文字データを1の変数にまとめる
    function pvp_data:pvpfunctions/systems/ui/addstring with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].buff
    function pvp_data:pvpfunctions/systems/ui/addstring with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].debuff
say 変更検知