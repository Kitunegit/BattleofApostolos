summon minecraft:item_display ~ ~ ~ {Passengers:[{id:"minecraft:item_display",Tags:["aj.new","aj.warrior_ult.model.rig_entity","aj.warrior_ult.model.bone","aj.warrior_ult.model.bone.blade"],transformation:[-2.220446049250313e-16f,9.957992501029599e-17f,1f,0.06250000000000017f,1f,0f,2.220446049250313e-16f,0.875f,-2.719262146893782e-32f,1f,-9.957992501029599e-17f,0.9375f,0f,0f,0f,1f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:8}},CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"warrior_ult.model\",\"color\":\"light_purple\"},\".\",{\"text\":\"bone\",\"color\":\"white\"},\"[\",{\"text\":\"blade\",\"color\":\"yellow\"},\"]\"]]",height:39f,width:8f},{id:"minecraft:item_display",Tags:["aj.new","aj.warrior_ult.model.rig_entity","aj.warrior_ult.model.bone","aj.warrior_ult.model.bone.shock3"],transformation:[-2.220446049250313e-16f,9.957992501029599e-17f,1f,0.06250000000000015f,1f,0f,2.220446049250313e-16f,0.96875f,-2.719262146893782e-32f,1f,-9.957992501029599e-17f,0.96875f,0f,0f,0f,1f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:9}},CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"warrior_ult.model\",\"color\":\"light_purple\"},\".\",{\"text\":\"bone\",\"color\":\"white\"},\"[\",{\"text\":\"shock3\",\"color\":\"yellow\"},\"]\"]]",height:41.5f,width:17f},{id:"minecraft:item_display",Tags:["aj.new","aj.warrior_ult.model.rig_entity","aj.warrior_ult.model.bone","aj.warrior_ult.model.bone.model"],transformation:[-2.220446049250313e-16f,9.957992501029599e-17f,1f,0.0625f,1f,0f,2.220446049250313e-16f,1.1875f,-2.719262146893782e-32f,1f,-9.957992501029599e-17f,7.654042494670958e-18f,0f,0f,0f,1f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:10}},CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"warrior_ult.model\",\"color\":\"light_purple\"},\".\",{\"text\":\"bone\",\"color\":\"white\"},\"[\",{\"text\":\"model\",\"color\":\"yellow\"},\"]\"]]",height:39.18291f,width:11.6225f}],Tags:["aj.new","aj.warrior_ult.model.rig_entity","aj.warrior_ult.model.root","aj.rig_root"],CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"warrior_ult.model\",\"color\":\"light_purple\"},\".\",{\"text\":\"root\",\"color\":\"white\"}]]"}
execute as @e[type=minecraft:item_display,tag=aj.warrior_ult.model.root,tag=aj.new,limit=1,distance=..0.1] run function animated_java:warrior_ult.model/zzzzzzzz/summon/as_root