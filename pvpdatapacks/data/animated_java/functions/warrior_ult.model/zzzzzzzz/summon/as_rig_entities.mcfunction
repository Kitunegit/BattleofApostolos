scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:warrior_ult.model/on_summon/as_rig_entities
execute if entity @s[tag=aj.warrior_ult.model.bone] run function #animated_java:warrior_ult.model/zzzzzzzz/on_summon/as_bones

