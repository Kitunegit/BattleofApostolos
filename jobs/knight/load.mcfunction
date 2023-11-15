#スコア定義
    scoreboard objectives add knight_r_detect used:carrot_on_a_stick
    scoreboard objectives add knight_skill_1_cool dummy
    scoreboard objectives add knight_skill_1_cal dummy

    scoreboard objectives add knight_skill_2 used:carrot_on_a_stick
    scoreboard objectives add knight_skill_2_cool dummy
    scoreboard objectives add knight_skill_2_cal dummy

    scoreboard players set $item_cool_check knight_skill_1_cal 20
    scoreboard players set $item_cool_check knight_skill_2_cal 20