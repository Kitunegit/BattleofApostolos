
execute if entity @a[scores={jobscore=3}] as @s at @s run function pvp_data:pvpfunctions/jobs/knight/special/main
execute if entity @a[scores={jobscore=3}] as @s at @s run function pvp_data:pvpfunctions/jobs/knight/skill/1/skill1
execute if entity @a[scores={jobscore=3}] as @s at @s run function pvp_data:pvpfunctions/jobs/knight/skill/2/skill2

#パッシブ
    execute if entity @a[scores={skill_2_cool=..400}] as @s[scores={jobscore=3}] run effect give @s strength 1 0 true

#剣の攻撃力増加
  execute as @a[nbt={SelectedItem:{tag:{CustomModelData:3},id:"minecraft:carrot_on_a_stick"}}] run attribute @s generic.attack_damage base set 3.5
  execute as @a[nbt=!{SelectedItem:{tag:{CustomModelData:3},id:"minecraft:carrot_on_a_stick"}}] run attribute @s generic.attack_damage base set 1.0