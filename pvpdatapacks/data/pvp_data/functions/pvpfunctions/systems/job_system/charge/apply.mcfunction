#> pvp_data:pvpfunctions/systems/job_system/charge/apply
#
# 実行者の指定の時間チャージ(移動不能等)にします。
#
# @input
#   args
#       isMoving: byte 動けるかの有無。
#       isRotation: byte 視点を動かせるかの有無
#       isCheckHealth: float チャージを中断する体力、現在体力から幾つ分減ったら中断するかの値。
#       duration: int チャージ時間の有無
#       call: string チャージ終了時に呼び出すFunctionパス
#
# @api