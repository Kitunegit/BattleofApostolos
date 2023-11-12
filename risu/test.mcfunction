#スコア定義
scoreboard objectives add click_test minecraft.used:minecraft:carrot_on_a_stick
scoreboard objectives add click_time dummy

#クリック検知
execute as @a[scores={click_test=1..,click_time=..1},nbt={SelectedItem:{tag:{click_test:1}}}] run playsound entity.experience_orb.pickup player @s
execute as @a[scores={click_test=1..,click_time=..1},nbt={SelectedItem:{tag:{click_test:1}}}] run scoreboard players set @s click_time 100
scoreboard players set @a click_test 0
scoreboard players remove @a[scores={click_time=1..}] click_time 1