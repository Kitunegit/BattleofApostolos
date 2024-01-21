#> pvp_data:pvpfunctions/systems/player_attack/not_charged_arrow

# 射撃時
    # advancement剥奪
        advancement revoke @s only pvp_data:system/player_attack/not_charged_arrow

    # 攻撃者の保存
        #declare tag system.player_attack.attacker
        tag @s add system.player_attack.attacker

    # ダメージ処理
        # 被ダメエンティティを特定
            #declare tag system.player_attack.attacked_candidate
            #declare tag system.player_attack.attacked_marker
            tag @e[nbt={HurtTime: 10s}, tag=!system.player_attack.attacked_marker, tag=!system.player_attack.attacker] add system.player_attack.attacked_candidate

            execute as @e[tag=system.player_attack.attacked_candidate] on attacker unless entity @s[tag=system.player_attack.attacker] run tag @s remove system.player_attack.attacked_candidate

        # ダメージ
            #declare tag/damage_type pvp_data:system/override
            function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {target: "@e[tag=system.player_attack.attacked_candidate]", damage: {amount: 2.0f, type: "pvp_data:system/override"}, knockback: {horizontal: 0.25d, vertical: 0.4d}}

    # リセット&同tickに攻撃するプレイヤーへの対策
        tag @e[tag=system.player_attack.attacked_candidate] add system.player_attack.attacked_marker

        tag @e[tag=system.player_attack.attacked_candidate] remove system.player_attack.attacked_candidate

        tag @s remove system.player_attack.attacker
