#> pvp_data:pvpfunctions/systems/job_system/damage/hurt
#
# ダメージを与える処理を行います。
#
# @within
#   function
#       pvp_data:pvpfunctions/systems/job_system/damage/operation/

# advancement回避
    #declare tag damage.avoid_advancement
    tag @e[tag=damage.apply_source] add damage.avoid_advancement

# マクロで代入
    $damage @s $(amount) $(type) by @e[tag=damage.apply_source,limit=1]

# リセット
    tag @e[tag=damage.apply_source] remove damage.avoid_advancement

# 被ダメ時回復阻害
    scoreboard players set @s healing_cool 100
    
# デバッグ用メッセージ
    $say $(amount)
