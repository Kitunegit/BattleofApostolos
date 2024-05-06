#層の確率取得とつけるデバフ用の0~100を振る
  execute at @s run execute at @s if entity @e[distance=0.1..3,tag=player] if predicate pvp_data:75_rng run scoreboard players add @s dark_scientist_passive 1
  execute as @s run function pvp_data:pvpfunctions/systems/rng_system/generated
#デバフ対象にタグ
  execute at @s run execute if score @s rng matches 0..33 run execute as @s run tag @e[tag=player,distance=0.1..3] add dark_scientist_skill_2_spead_debuff
  execute at @s run execute if score @s rng matches 34..66 run execute as @s run tag @e[tag=player,distance=0.1..3] add dark_scientist_skill_2_damage_debuff
  execute at @s run execute if score @s rng matches 67..99 run execute as @s run effect give @e[tag=player,distance=0.1..3] minecraft:blindness 2 1
#タグ持ちの移動速度を取得
  execute as @e[tag=dark_scientist_skill_2_spead_debuff] run scoreboard players operation @s dark_scientist_skill_2_spead_debuff = @s generic.speed
#速度を-15%
  execute as @e[tag=dark_scientist_skill_2_spead_debuff] run scoreboard players operation @s dark_scientist_skill_2_spead_debuff = ds.skill2_15% dark_scientist_skill_2_spead_debuff
  execute as @e[tag=dark_scientist_skill_2_spead_debuff] run scoreboard players operation @s dark_scientist_skill_2_spead_debuff = ds.skill2_1% dark_scientist_skill_2_spead_debuff
  execute as @e[tag=dark_scientist_skill_2_spead_debuff] run scoreboard players operation @s generic.speed = @s dark_scientist_skill_2_spead_debuff
#ダメージデバフ付きのだめを下げる
  execute as @e[tag=dark_scientist_skill_2_damage_debuff] run scoreboard players remove @s generic.attack 400
#吹っ飛ばす
  execute at @s run function pvp_data:pvpfunctions/systems/job_system/damage/apply {damage: {},knockback: {horizontal: 1d,vertical: 0.5d},target: "@e[distance=0.1..3]"}
#デバフ時間の計測開始
  scoreboard players set @s dark_scientist_skill_2_debuff_time 40