#> pvp_data:pvpfunctions/systems/player_attack/tick

# tagを外す
    tag @e[tag=system.player_attack.attacked_marker] remove system.player_attack.attacked_marker

# attributeの値を固定
    # 攻撃力
        execute as @a run attribute @s generic.attack_damage base set -0.984375
    # 防御力
        execute as @e run attribute @s generic.armor base set -100000.0

    # 防具強度
        execute as @e run attribute @s generic.armor_toughness base set -100000.0

# 矢のダメージを0に(したかった；；)
    execute as @e[type=arrow] if data entity @s Owner run data modify entity @s damage set value 0.0d
