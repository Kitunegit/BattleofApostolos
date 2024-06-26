#> common_sytems:jobs/normal_attack/load
#
# 通常攻撃コンボに関する初期処理
#
# @internal

# スコア定義
 
 # 単攻撃CT
    scoreboard objectives add system.attack.cool dummy
 # コンボ全体CT
    scoreboard objectives add system.combo.cool dummy
 # コンボ継続カウント
    scoreboard objectives add system.combo.timer dummy
 # 現在コンボ段数
    scoreboard objectives add system.combo.count dummy
 # 最大コンボ段数(各役職ごとに定義)
    scoreboard objectives add system.combo.max dummy
# 演出フレームカウンター
    scoreboard objectives add system.particle.frame.tick dummy
# 演出画像フレーム
    scoreboard objectives add system.particle.frame dummy
# ロードチェック
   say Normal_attack/Load is Loaded!