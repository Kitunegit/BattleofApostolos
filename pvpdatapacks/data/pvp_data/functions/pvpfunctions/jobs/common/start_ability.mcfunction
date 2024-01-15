#> pvp_data:pvpfunctions/jobs/common/is_jobs
#
# アビリティをスタートさせるための関数です。
#
# @input
#
#   job_name: string ジョブ名
#   
#   func_pass: string ファンクションパス
#
#   cool: int クールタイム
#
#   ab_type: string アビリティタイプ
# @api

#スタートさせる
    $function pvp_data:pvpfunctions/jobs/$(job_name)/$(func_pass)/skill_start

#CTをセット
    $scoreboard players set $const temp.cool_can $(cool)
    scoreboard players operation $const temp.cool_can *= $20 temp.cool_can
    $scoreboard players operation @s $(ab_type)_cool = $const temp.cool_can

#バリア付与