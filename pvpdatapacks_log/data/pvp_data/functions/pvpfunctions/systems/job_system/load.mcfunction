
# スコア定義
    # プレイヤー固有スコア
    scoreboard objectives add PlayerID dummy
    # ステータス

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
        #自己回復力(100倍)
        scoreboard objectives add generic.healing_speed dummy

    #どの役職についてるか判別するためのスコア
    scoreboard objectives add jobscore dummy

    #右クリ検知用共通スコア
    scoreboard objectives add r_click minecraft.used:minecraft.carrot_on_a_stick

    #スニーク検知用共通スコア
    scoreboard objectives add sneaking dummy

    #死亡数カウント
    scoreboard objectives add death deathCount

    #ダメージディスプレイ
    scoreboard objectives add damage.display_time dummy
    # クールタイム
        #CT計算用
        scoreboard objectives add temp.cool_can dummy
        scoreboard players set $20 temp.cool_can 20
        
        #スキル1のCT
        scoreboard objectives add skill_1_cool dummy
        #スキル2のCT
        scoreboard objectives add skill_2_cool dummy
        #特殊技のCT
        scoreboard objectives add special_cool dummy
        #パッシブ用
        scoreboard objectives add passive_cool dummy
        #パッシブ用
        scoreboard objectives add passive_con dummy
        #特殊技のカウントダウン等用共通スコア
        scoreboard objectives add special_count dummy
        
        #スキル1のCT初期地(1/10)
        scoreboard objectives add skill_1_con dummy
        #スキル2のCT初期地(1/10)
        scoreboard objectives add skill_2_con dummy
        #特殊技のCT初期地(1/10)
        scoreboard objectives add special_con dummy

        #スキル1のCT初期地(1/10)
        scoreboard objectives add skill1.ct_data dummy
        #スキル2のCT初期地(1/10)
        scoreboard objectives add skill2.ct_data dummy
        #特殊技のCT初期地(1/10)
        scoreboard objectives add special.ct_data dummy

        #ジャストガードの判定用
        scoreboard objectives add just_guard dummy
        #ジャストガードのCT
        scoreboard objectives add guard_cool dummy
        #自動回復クール
        scoreboard objectives add healing_cool dummy
    # conの初期地定義
        scoreboard players set $const skill_1_con 20
        scoreboard players set $const skill_2_con 20
        scoreboard players set $const special_con 20
#カウント
    #スキル1
    scoreboard objectives add skill_1_count dummy
    #スキル2
    scoreboard objectives add skill_2_count dummy
    #ウルト
    scoreboard objectives add ult_count dummy
    #パッシブ
    scoreboard objectives add passive_count dummy
    scoreboard players set $3 skill_2_count 3
    scoreboard players set $10 skill_2_count 10
    #ウルト
    scoreboard objectives add ult_cool dummy
# 各役職の読み込み
    function pvp_data:pvpfunctions/jobs/knight/load
    function pvp_data:pvpfunctions/jobs/guardian/load
    function pvp_data:pvpfunctions/jobs/archer/load
    function pvp_data:pvpfunctions/jobs/assassin/load
    function pvp_data:pvpfunctions/jobs/warrior/load
    function pvp_data:pvpfunctions/jobs/wizard/load

# シールド
    scoreboard objectives add damage.shield.durability dummy
