## 'grave | Plugin onTick commands'

# Constantly updates players dimension and XYZ data
execute as @a at @s store result score @s vspGraveX run data get entity @s Pos[0]
execute as @a at @s store result score @s vspGraveY run data get entity @s Pos[1]
execute as @a at @s store result score @s vspGraveZ run data get entity @s Pos[2]
execute as @a at @s store result score @s vspGraveDim run data get entity @s Dimension

# Removes all rail type blocks from below any graves to prevent minecart stealing
execute as @e[tag=vsp_grave_marker] at @s if block ~ ~-1 ~ #vsp:rail_blocks run setblock ~ ~-1 ~ air destroy

# Replaces the top and bottom half with their respective blocks if they change at any point
execute as @e[tag=vsp_grave_marker] at @s unless block ~ ~ ~ minecraft:podzol run setblock ~ ~ ~ minecraft:podzol
execute as @e[tag=vsp_grave_marker] at @s unless block ~ ~1 ~ minecraft:andesite_wall[east=true,west=true,up=true] run setblock ~ ~1 ~ minecraft:andesite_wall[east=true,west=true,up=true]

# When a grave storage entity that doesn't have the 'vsp_grave_storage_locked' tag
execute as @e[tag=!vsp_grave_storage_locked,tag=vsp_grave_storage_active] at @s run function vsp:grave/grave_handler/lock_grave_wait

# When a players vspDeathTrack score is greater than one run 'vsp:grave/player/on_death'
execute as @a[scores={vspDeathTrack=1..}] at @s run function vsp:grave/player/on_death

#
