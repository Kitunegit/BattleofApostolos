#パッシブ
    #インベントリの矢の数
    scoreboard objectives add archer_arrow_num dummy
    scoreboard players set @s archer_arrow_num 0
    #表記上の数値
    scoreboard objectives add archer_arrow_num_con dummy
    scoreboard players set $1 archer_arrow_num_con 1
    #矢の合計数
    scoreboard objectives add archer_arrow_count dummy
    #矢の回復のクールタイム
    scoreboard objectives add archer_passive_cool dummy
#ウルトの時間
    scoreboard objectives add archer_ult_time dummy