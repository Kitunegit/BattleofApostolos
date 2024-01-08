#> pvp_data:pvpfunctions/systems/player_attack/not_charged

# 半チャージ攻撃時
    # advancement剥奪
        advancement revoke @s only pvp_data:system/player_attack/not_charged

    # 攻撃の種類の判別用
        #declare storage temporary:
        data modify storage temporary: attack_type set value "not_charged"

    # 共通の処理
        function pvp_data:pvpfunctions/systems/player_attack/
