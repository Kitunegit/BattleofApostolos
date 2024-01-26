function pvp_data:gimmick_system/main
function pvp_data:pvpfunctions/systems/advancements/main
function pvp_data:pvpfunctions/systems/job_system/main
function pvp_data:pvpfunctions/systems/area_system/main
execute as @a[tag=sand] at @s run fill ~-15 ~-5 ~-15 ~15 ~15 ~15 grass_block replace sand
#execute as @a at @s run fill ~-15 ~-5 ~-15 ~15 ~15 ~15 air replace light

# プレイヤーによる攻撃検知のための常時実行
    function pvp_data:pvpfunctions/systems/player_attack/tick

# ステータス関連の常時実行
    function pvp_data:pvpfunctions/systems/status/tick
