#> score_to_attribute:attack_speed/modify
#
# @internal

# ダミープレイヤーに代入
    scoreboard players operation $target ScoreToAttribute.attack_speed = @s ScoreToAttribute.attack_speed

# 二分探索
    # 838.8608
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-17 "ScoreToAttribute" 838.8608 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-17 "ScoreToAttribute" -838.8608 add

    # 419.4304
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-16 "ScoreToAttribute" 419.4304 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-16 "ScoreToAttribute" -419.4304 add

    # 209.7152
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-15 "ScoreToAttribute" 209.7152 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-15 "ScoreToAttribute" -209.7152 add

    # 104.8576
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-14 "ScoreToAttribute" 104.8576 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-14 "ScoreToAttribute" -104.8576 add

    # 52.4288
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-13 "ScoreToAttribute" 52.4288 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-13 "ScoreToAttribute" -52.4288 add

    # 26.2144
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-12 "ScoreToAttribute" 26.2144 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-12 "ScoreToAttribute" -26.2144 add

    # 13.1072
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-11 "ScoreToAttribute" 13.1072 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-11 "ScoreToAttribute" -13.1072 add

    # 6.5536
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-10 "ScoreToAttribute" 6.5536 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-10 "ScoreToAttribute" -6.5536 add

    # 3.2768
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-0f "ScoreToAttribute" 3.2768 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-0f "ScoreToAttribute" -3.2768 add

    # 1.6384
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-0e "ScoreToAttribute" 1.6384 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-0e "ScoreToAttribute" -1.6384 add

    # 0.8192
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-0d "ScoreToAttribute" 0.8192 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-0d "ScoreToAttribute" -0.8192 add

    # 0.4096
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-0c "ScoreToAttribute" 0.4096 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-0c "ScoreToAttribute" -0.4096 add

    # 0.2048
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-0b "ScoreToAttribute" 0.2048 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-0b "ScoreToAttribute" -0.2048 add

    # 0.1024
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-0a "ScoreToAttribute" 0.1024 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-0a "ScoreToAttribute" -0.1024 add

    # 0.0512
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-09 "ScoreToAttribute" 0.0512 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-09 "ScoreToAttribute" -0.0512 add

    # 0.0256
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-08 "ScoreToAttribute" 0.0256 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-08 "ScoreToAttribute" -0.0256 add

    # 0.0128
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-07 "ScoreToAttribute" 0.0128 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-07 "ScoreToAttribute" -0.0128 add

    # 0.0064
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-06 "ScoreToAttribute" 0.0064 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-06 "ScoreToAttribute" -0.0064 add

    # 0.0032
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-05 "ScoreToAttribute" 0.0032 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-05 "ScoreToAttribute" -0.0032 add

    # 0.0016
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-04 "ScoreToAttribute" 0.0016 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-04 "ScoreToAttribute" -0.0016 add

    # 0.0008
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-03 "ScoreToAttribute" 0.0008 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-03 "ScoreToAttribute" -0.0008 add

    # 0.0004
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-02 "ScoreToAttribute" 0.0004 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-02 "ScoreToAttribute" -0.0004 add

    # 0.0002
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-01 "ScoreToAttribute" 0.0002 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-01 "ScoreToAttribute" -0.0002 add

    # 0.0001
        execute store result score $current ScoreToAttribute.attack_speed run attribute @s generic.attack_speed get 100

        execute if score $current ScoreToAttribute.attack_speed < $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-00 "ScoreToAttribute" 0.0001 add

        execute if score $current ScoreToAttribute.attack_speed >= $target ScoreToAttribute.attack_speed run attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-00 "ScoreToAttribute" -0.0001 add

# 誤差調整
    attribute @s generic.attack_speed modifier add da139e17-c9bd-410f-8ed2-99 "ScoreToAttribute" -0.0001 add

# リセット
    scoreboard players reset $target ScoreToAttribute.attack_speed

    scoreboard players reset $current ScoreToAttribute.attack_speed
