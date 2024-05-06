#> pvp_data:pvpfunctions/systems/player_attack/

# 攻撃者の保存
    #declare tag system.player_attack.attacker
    tag @s add system.player_attack.attacker

# ダメージ処理
    # 被ダメエンティティを特定
        #declare tag system.player_attack.attacked_candidate
        #declare tag system.player_attack.attacked_marker
        execute as @e[distance=..7, nbt={HurtTime: 10s}, tag=!system.player_attack.attacked_marker, tag=!system.player_attack.attacker] run tag @s add system.player_attack.attacked_candidate

        execute as @e[tag=system.player_attack.attacked_candidate] on attacker unless entity @s[tag=system.player_attack.attacker] run tag @s remove system.player_attack.attacked_candidate

    # ダメージ
        execute if data storage temporary: {attack_type: "max_charged_critical"} at @e[tag=system.player_attack.attacked_candidate] run particle crit ~ ~1 ~ 0.4 0.8 0.4 0.1 20 force

        #declare tag/damage_type pvp_data:system/override
        function pvp_data:pvpfunctions/systems/job_system/damage/apply {target: "@e[tag=system.player_attack.attacked_candidate]", damage: {amount: 0.0f, type: "pvp_data:system/override"}, knockback: {horizontal: 0.25d, vertical: 0.4d}}

# リセット&同tickに攻撃するプレイヤーへの対策
    tag @e[tag=system.player_attack.attacked_candidate] add system.player_attack.attacked_marker

    tag @e[tag=system.player_attack.attacked_candidate] remove system.player_attack.attacked_candidate

    tag @s remove system.player_attack.attacker

    data remove storage temporary: attack_type
