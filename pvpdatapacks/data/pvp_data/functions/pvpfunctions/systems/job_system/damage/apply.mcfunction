#> pvp_data:pvpfunctions/systems/job_system/damage/apply
#
# 実行者から、引数に渡したエンティティにダメージとノックバックを与えます。
# 与えられる側のエンティティのセレクターは複数を受け付けます。
#
# @input
#   args
#       target: string ダメージを与えられる側のエンティティ
#       amount: float ダメージの量
#       type: string ダメージタイプ
#       knockback_strength: double 横方向のノックバックの強さ
#
# @api

#実行者の保存
    #declare tag damage.apply_source ダメージを引き起こすエンティティが保持する一時タグ
    tag @s add damage.apply_source

#負荷回避のためtarget保存
    #declare tag damage.apply_all_targets ノックバックするエンティティ全てが保持する一時タグ
    $tag $(target) add damage.apply_all_targets

#ダメージ
    $execute as @e[tag=damage.apply_all_targets] run damage @s $(amount) $(type) by @e[tag=damage.apply_source,limit=1]

#ノックバック
    #プレイヤー
        $execute as @e[tag=damage.apply_all_targets] if entity @s[type=player] run function pvp_data:pvpfunctions/systems/job_system/damage/to/player {knockback_strength: $(knockback_strength)d}

    #エンティティ
        $execute as @e[tag=damage.apply_all_targets] unless entity @s[type=player] run function pvp_data:pvpfunctions/systems/job_system/damage/to/entity {knockback_strength: $(knockback_strength)d}

#リセット
    tag @s remove damage.apply_source

    tag @e remove damage.apply_all_targets
    tag @a remove damage.apply_all_targets

    data remove storage temporary: value
