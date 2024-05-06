#> pvp_data:pvpfunctions/systems/status/load
#
# 主にオブジェクトの作成
#
# @internal

# オブジェクトの定義
    # 攻撃力
        #declare objective generic.attack.effect_depth
        scoreboard objectives add generic.attack.effect_depth dummy

        #declare objective generic.attack.effect_duration
        scoreboard objectives add generic.attack.effect_duration dummy

        #declare objective generic.attack.negative_effect_depth
        scoreboard objectives add generic.attack.negative_effect_depth dummy

        #declare objective generic.attack.negative_effect_duration
        scoreboard objectives add generic.attack.negative_effect_duration dummy

        #declare objective generic.attack.base
        scoreboard objectives add generic.attack.base dummy

    # 攻撃速度
        #declare objective generic.attack_speed.effect_depth
        scoreboard objectives add generic.attack_speed.effect_depth dummy

        #declare objective generic.attack_speed.effect_duration
        scoreboard objectives add generic.attack_speed.effect_duration dummy

        #declare objective generic.attack_speed.negative_effect_depth
        scoreboard objectives add generic.attack_speed.negative_effect_depth dummy

        #declare objective generic.attack_speed.negative_effect_duration
        scoreboard objectives add generic.attack_speed.negative_effect_duration dummy

        #declare objective generic.attack_speed.base
        scoreboard objectives add generic.attack_speed.base dummy

    # 移動速度
        #declare objective generic.speed.effect_depth
        scoreboard objectives add generic.speed.effect_depth dummy

        #declare objective generic.speed.effect_duration
        scoreboard objectives add generic.speed.effect_duration dummy

        #declare objective generic.speed.negative_effect_depth
        scoreboard objectives add generic.speed.negative_effect_depth dummy

        #declare objective generic.speed.negative_effect_duration
        scoreboard objectives add generic.speed.negative_effect_duration dummy

        #declare objective generic.speed.base
        scoreboard objectives add generic.speed.base dummy

    # 最大体力
        #declare objective generic.max_health.effect_depth
        scoreboard objectives add generic.max_health.effect_depth dummy

        #declare objective generic.max_health.effect_duration
        scoreboard objectives add generic.max_health.effect_duration dummy

        #declare objective generic.max_health.negative_effect_depth
        scoreboard objectives add generic.max_health.negative_effect_depth dummy

        #declare objective generic.max_health.negative_effect_duration
        scoreboard objectives add generic.max_health.negative_effect_duration dummy

        #declare objective generic.max_health.base
        scoreboard objectives add generic.max_health.base dummy

    # 防御力
        #declare objective generic.defense.effect_depth
        scoreboard objectives add generic.defense.effect_depth dummy

        #declare objective generic.defense.effect_duration
        scoreboard objectives add generic.defense.effect_duration dummy

        #declare objective generic.defense.negative_effect_depth
        scoreboard objectives add generic.defense.negative_effect_depth dummy

        #declare objective generic.defense.negative_effect_duration
        scoreboard objectives add generic.defense.negative_effect_duration dummy

        #declare objective generic.defense.base
        scoreboard objectives add generic.defense.base dummy

# なんだろうこれ
    scoreboard objectives add temp.speed dummy
    scoreboard objectives add temp.attack_speed dummy
