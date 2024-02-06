scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:knight_sword/on_summon/as_rig_entities
execute if entity @s[tag=aj.knight_sword.bone] run function #animated_java:knight_sword/zzzzzzzz/on_summon/as_bones

