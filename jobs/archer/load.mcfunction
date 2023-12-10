#パッシブ
    scoreboard objectives add archer_arrow_num dummy
    scoreboard players set @s archer_arrow_num 0
    scoreboard objectives add archer_arrow_num_con dummy
    scoreboard players set $1 archer_arrow_num_con 1
    scoreboard objectives add archer_arrow_count dummy
    scoreboard objectives add archer_passive_cool dummy
    scoreboard objectives add archer_passive_con dummy
    scoreboard players set $const archer_passive_con 60
#ウルト
    scoreboard objectives add archer_ult_time dummy