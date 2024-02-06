#> pvp_data:pvpfunctions/systems/job_system/damage/apply
#
# 実行者から、引数に渡したエンティティにダメージとノックバックを与えます。
# 与えられる側のエンティティのセレクターは複数を受け付けます。
# 渡されたダメージを基に演算が行われます。
#
# @input
#   args
#       target: string ダメージを与えられる側のエンティティ
#       damage:
#           amount: float ダメージの量
#           type: string ダメージタイプ
#       knockback:
#           horizontal: double 横方向の強さ
#           vertical: double 縦方向の強さ
#
# @api

# 実行者の保存
    #declare tag damage.apply_source ダメージを引き起こすエンティティが保持する一時タグ
    tag @s add damage.apply_source

# 負荷回避のためtarget保存
    #declare tag damage.apply_all_targets ノックバックするエンティティ全てが保持する一時タグ
    $tag $(target) add damage.apply_all_targets

# ノックバック
    # プレイヤー
        $execute as @e[tag=damage.apply_all_targets] if entity @s[type=player] run function pvp_data:pvpfunctions/systems/job_system/damage/knockback/player $(knockback)

    # エンティティ
        $execute as @e[tag=damage.apply_all_targets] unless entity @s[type=player] run function pvp_data:pvpfunctions/systems/job_system/damage/knockback/entity $(knockback)

# ダメージ
    # ストレージに代入
        #declare storage temporary:
        $data modify storage temporary: value set value $(damage)

    # 計算用オブジェクト作成
        #declare objective damage.apply-temporary
        scoreboard objectives add damage.apply-temporary dummy

        #declare score_holder $total_damage
        #declare score_holder $item_damage
        #declare score_holder $input_damage
        #declare score_holder #constant

    # 基礎攻撃力を代入
        scoreboard players operation $total_damage damage.apply-temporary = @s generic.attack

        scoreboard players add $total_damage damage.apply-temporary 0

    # 武器攻撃力を100倍して代入
        execute store result score $item_damage damage.apply-temporary run data get entity @s SelectedItem.tag.weapon.damage.amount

        scoreboard players add $item_damage damage.apply-temporary 0

        scoreboard players set #constant damage.apply-temporary 100

        scoreboard players operation $item_damage damage.apply-temporary *= #constant damage.apply-temporary

    # 入力ダメージを100倍して代入
        execute store result score $input_damage damage.apply-temporary run data get storage temporary: value.amount 100

    # 全て足し合わせる
        scoreboard players operation $total_damage damage.apply-temporary += $item_damage damage.apply-temporary

        scoreboard players operation $total_damage damage.apply-temporary += $input_damage damage.apply-temporary

    # ダメージ処理
        data modify storage temporary: config.fixed set value false

        execute as @e[tag=damage.apply_all_targets] run function pvp_data:pvpfunctions/systems/job_system/damage/operation/

    # リセット
        scoreboard objectives remove damage.apply-temporary

# リセット
    tag @s remove damage.apply_source

    tag @e remove damage.apply_all_targets
    tag @a remove damage.apply_all_targets

    data remove storage temporary: value
    data remove storage temporary: config
