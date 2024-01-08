#> pvp_data:pvpfunctions/systems/player_attack/max_charged

# 最大チャージ攻撃時
    # advancement剥奪
        advancement revoke @s only pvp_data:system/player_attack/max_charged

    # 攻撃の種類の判別用
        #declare storage temporary:
        data modify storage temporary: attack_type set value "max_charged"

    # 共通の処理
        function pvp_data:pvpfunctions/systems/player_attack/
