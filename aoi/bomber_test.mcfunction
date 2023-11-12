tag @a[tag=BomberPassive,scores={BomberPassiveMeter=-3..-1}] remove BomberPassive
#メーターがマイナス値に逝ったプレイヤーのタグを削除。
scoreboard players set @a[scores={BomberPassiveMeter=-3..-1}] BomberPassiveMeter 0
#メーターがマイナス値行ったプレイヤーのメーターを0にする
effect give @a[tag=BomberPassive] speed 1 1
#パッシブ中のプレイヤーにスピードエフェクトを付与
effect give @a[tag=BomberPassive] invisibility 1 1
#パッシブ中のプレイヤーに透明化エフェクトを付与
scoreboard players add @a[tag=!BomberPassive,scores={BomberPassiveMeter=-1..1199}] BomberPassiveMeter 1
#パッシブ状態じゃない人のメータが上限に達してない場合メーターを増やす
scoreboard players remove @a[tag=BomberPassive,scores={BomberPassiveMeter=-1..}] BomberPassiveMeter 2
#パッシブ状態のプレイヤーのメーターがマイナス値じゃない場合メーターを減らす
effect clear @a[tag=!BomberPassive] minecraft:speed
effect clear @a[tag=!BomberPassive] minecraft:invisibility