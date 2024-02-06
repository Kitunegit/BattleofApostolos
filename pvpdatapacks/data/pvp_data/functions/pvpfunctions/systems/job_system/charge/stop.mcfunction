# 動けるようにする
    effect clear @s slowness
    effect clear @s jump_boost
# プレイヤーにタグ
    tag @s add Charge.Player
# 紐付けされてるマーカーをキル
    execute as @e[type=marker,tag=Charge.ViewPointSet] if score @s Charge.id = @a[tag=Charge.Player,limit=1,sort=nearest] Charge.id run kill @s
# リセット
    tag @s remove Charge.Player
    tag @e[type=marker] remove Charge.ViewPointSelector