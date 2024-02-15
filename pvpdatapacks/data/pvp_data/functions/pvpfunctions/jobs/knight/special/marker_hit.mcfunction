#> pvp_data:pvpfunctions/jobs/knight/special/marker
#
# 騎士特殊攻撃マーカーをHit処理
#
# @internal

# パーティクルを出してキル
    execute at @s run particle gust
    kill @s