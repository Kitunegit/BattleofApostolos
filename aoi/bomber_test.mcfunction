tag @a[tag=BomberPassive,scores={BomberPassiveMeter=-3..-1}] remove BomberPassive
#メーターがマイナス値に逝ったプレイヤーのタグを削除。
scoreboard players set @a[scores={BomberPassiveMeter=-3..-1}] BomberPassiveMeter 0
#メーターがマイナス値行ったプレイヤーのメーターを0にする
execute at @a[tag=BomberPassive] run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:1,Amplifier:1,Duration:10}]}
#パッシブ中のプレイヤーにスピードエフェクトを付与
execute at @a[tag=BomberPassive] run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:14,Amplifier:1,Duration:10}]}
#パッシブ中のプレイヤーに透明化エフェクトを付与
scoreboard players add @a[tag=!BomberPassive,scores={BomberPassiveMeter=-1..1199}] BomberPassiveMeter 1
#パッシブ状態じゃない人のメータが上限に達してない場合メーターを増やす
scoreboard players remove @a[tag=BomberPassive,scores={BomberPassiveMeter=-1..}] BomberPassiveMeter 2
#パッシブ状態のプレイヤーのメーターがマイナス値じゃない場合メーターを減らす