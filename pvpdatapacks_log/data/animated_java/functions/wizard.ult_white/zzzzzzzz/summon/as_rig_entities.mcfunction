scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:wizard.ult_white/on_summon/as_rig_entities
execute if entity @s[tag=aj.wizard.ult_white.bone] run function #animated_java:wizard.ult_white/zzzzzzzz/on_summon/as_bones

