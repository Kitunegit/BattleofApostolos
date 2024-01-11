
#スコア定義
    #ステータス

        #攻撃力(100倍の値)
        scoreboard objectives add generic.attack dummy
        #防御力(100倍の値)
        scoreboard objectives add generic.defense dummy
        #速度(1000倍の値)
        scoreboard objectives add generic.speed dummy
        #HP(等倍)
        scoreboard objectives add generic.max_health dummy
        #攻撃速度(100倍)
        scoreboard objectives add generic.attack_speed dummy

    #どの役職についてるか判別するためのスコア
    scoreboard objectives add jobscore dummy

    #右クリ検知用共通スコア
    scoreboard objectives add r_click minecraft.used:minecraft.carrot_on_a_stick

    #スニーク検知用共通スコア
    scoreboard objectives add sneaking dummy

    #死亡数カウント
    scoreboard objectives add death deathCount
#その他
    #チャージチェック用
        scoreboard objectives add charge_check.Health dummy
        scoreboard players set $2 charge_check.Health 2
#クールタイム
    #スキル1のCT
    scoreboard objectives add skill_1_cool dummy
    #スキル2のCT
    scoreboard objectives add skill_2_cool dummy
    #特殊技のCT
    scoreboard objectives add special_cool dummy
    #特殊技のカウントダウン等用共通スコア
    scoreboard objectives add special_count dummy
    #スキル1のバリア減らし用共通スコア
    scoreboard objectives add skill_1_con dummy
    #スキル2のバリア減らし用共通スコア
    scoreboard objectives add skill_2_con dummy
    #特殊技のバリア減らし用共通スコア
    scoreboard objectives add special_con dummy
    #ジャストガードの判定用
    scoreboard objectives add just_guard dummy
    #ジャストガードのCT
    scoreboard objectives add guard_cool dummy
    #conの初期地定義
    scoreboard players set $const skill_1_con 20
    scoreboard players set $const skill_2_con 20
    scoreboard players set $const special_con 20
#各役職の読み込み
    function pvp_data:pvpfunctions/jobs/knight/load
    function pvp_data:pvpfunctions/jobs/guardian/load
    function pvp_data:pvpfunctions/jobs/archer/load
    function pvp_data:pvpfunctions/jobs/assassin/load
    function pvp_data:pvpfunctions/jobs/warrior/load
    function pvp_data:pvpfunctions/jobs/wizard/load
#体力増加
    execute as @a run attribute @s generic.max_health base set 40
    effect give @a instant_health 1 100 true

    execute as @a run attribute @s generic.max_health base set 40