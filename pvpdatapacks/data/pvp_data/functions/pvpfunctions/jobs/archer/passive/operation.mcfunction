#> pvp_data:pvpfunctions/jobs/archer/passive/operation
#
# 弓兵インベントリ更新確認
#
# @internal

# 一時オブジェクト
    scoreboard objectives add archer.arrow_count dummy

# 計算
    #前回の計算を消す
    scoreboard players operation @s passive_count -= @s archer.inv_arrow
    #インベントリの矢の数をarcher.arrow_countに代入
    execute store result score @s archer.arrow_count run clear @s arrow 0
    #矢の数と同期
    scoreboard players operation @s archer.inv_arrow = @s archer.arrow_count
    #矢の数とインベントリの矢の数を足す
    scoreboard players operation @s passive_count += @s archer.arrow_count

# 一時オブジェクト
    scoreboard objectives remove archer.arrow_count