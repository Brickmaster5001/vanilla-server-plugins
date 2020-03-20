execute if score @e[tag=vsp_grave_marker_active,sort=nearest,limit=1,distance=..3] vspGraveID = @s vspPlayerID run function vsp:grave/player/return_items
execute unless score @e[tag=vsp_grave_marker_active,sort=nearest,limit=1,distance=..3] vspGraveID = @s vspPlayerID run tellraw @s [{"text":">>> ","color":"gray"},{"text":"Grave not in range!","color":"yellow"}]
