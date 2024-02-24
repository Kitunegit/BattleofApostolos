scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:guardian_ult/on_summon/as_rig_entities
execute if entity @s[tag=aj.guardian_ult.bone] run function #animated_java:guardian_ult/zzzzzzzz/on_summon/as_bones

