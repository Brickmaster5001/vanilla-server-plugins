execute if score @e[tag=vsp_grave_part,sort=nearest,limit=1,distance=..3] vspGraveID = @s vspPlayerID run tag @e[tag=vsp_grave_part,sort=nearest,limit=10,distance=..3] add vsp_grave_returning
tp @e[tag=vsp_grave_returning,tag=vsp_grave_storage,distance=..4] @s
kill @e[tag=vsp_grave_returning,tag=vsp_grave_storage,distance=..4]
execute at @e[tag=vsp_grave_returning,tag=vsp_grave_marker,distance=..4] run fill ~ ~ ~ ~ ~1 ~ air
kill @e[tag=vsp_grave_returning,tag=vsp_grave_marker,distance=..4]
