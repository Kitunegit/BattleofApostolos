#> pvp_data:pvpfunctions/systems/job_system/charge/apply
#
# 実行者の指定の時間チャージ(移動不能等)にします。
#
# @input
#   args
#       isMoving: byte 動けるかの有無。trueで動けます
#       isRotation: byte 視点を動かせるかの有無
#       isCheckHealth: float チャージを中断する体力、現在体力から幾つ分減ったら中断するかの値。
#       duration: int チャージ時間の有無
#       call: string チャージ終了時に呼び出すFunctionパス
#
# @api

# スコア定義
    scoreboard objectives add Charge.Time dummy
    scoreboard objectives add Charge.id dummy

# 入力値をストレージに代入
    $data modify storage temporary: charge set value {isMoving: $(isMoving)b ,isRotation:$(isRotation)b,isCheckHealth:$(isCheckHealth),duration:$(duration),call: "$(call)"}

# 効果時間をスコアに代入
    execute store result score @s Charge.Time run data get storage temporary: charge.duration

# 動け無くする
    execute if data storage temporary: {charge: {isMoving: false}} run effect give @s jump_boost infinite 128 true
    execute if data storage temporary: {charge: {isMoving: false}} run effect give @s slowness infinite 6 true
    execute if data storage temporary: {charge: {isMoving: false}} run tag @s add Charge.NoMove

# 視点を動けなくする
    execute if data storage temporary: {charge: {isRotation: false}} run function pvp_data:pvpfunctions/systems/job_system/charge/no_rotation
    execute if data storage temporary: {charge: {isMoving: false}} run tag @s add Charge.NoRotation
# 体力