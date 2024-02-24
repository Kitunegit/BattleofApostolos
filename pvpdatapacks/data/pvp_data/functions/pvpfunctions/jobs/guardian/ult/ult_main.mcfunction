#> pvp_data:pvpfunctions/jobs/guardian/ult/ult_main
#
# 守護者ウルト常時実行処理
#
# @internal

# 発動処理
    execute as @s[nbt={SelectedItem:{tag:{CustomModelData:83},id:"minecraft:carrot_on_a_stick"}},scores={ult_cool=..0,r_click=1..}] run function pvp_data:pvpfunctions/jobs/guardian/ult/ult_start
# 発動中処理
    execute if score @s ult_count matches 1.. run function pvp_data:pvpfunctions/jobs/guardian/ult/ult_tick
#終了処理
    execute if score @s ult_cool matches 0 run function pvp_data:pvpfunctions/jobs/guardian/ult/ult_fin