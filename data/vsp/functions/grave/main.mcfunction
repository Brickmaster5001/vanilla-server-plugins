## 'grave | Plugin onTick commands'

# Removes all rail type blocks from below any graves to prevent minecart stealing
execute as @e[tag=vsp_grave_marker] at @s if block ~ ~-1 ~ #vsp:rail_blocks run setblock ~ ~-1 ~ air destroy

# Replaces the top and bottom half with their respective blocks if they change at any point
execute as @e[tag=vsp_grave_marker] at @s unless block ~ ~ ~ minecraft:podzol run setblock ~ ~ ~ minecraft:podzol
execute as @e[tag=vsp_grave_marker] at @s unless block ~ ~1 ~ minecraft:andesite_wall[east=true,west=true,up=true] run setblock ~ ~1 ~ minecraft:andesite_wall[east=true,west=true,up=true]

# When a grave storage entity that doesn't have the 'vsp_grave_storage_locked' tag
execute as @e[tag=!vsp_grave_storage_locked,tag=vsp_grave_storage_active] at @s run function vsp:grave/grave_handler/lock_grave_wait

# When a players vspDeathTrack score is greater than one run 'vsp:grave/player/on_death'
execute as @a[scores={vspDeathTrack=1..}] at @s run function vsp:grave/player/on_death

# Makes sure player doesn't recieve collect grave message right after death
scoreboard players remove @a[scores={vspGravePDelay=1..}] vspGravePDelay 1
tag @a remove vsp_grave_message_delay
tag @a[scores={vspGravePDelay=1..}] add vsp_grave_message_delay

# Runs player nearby grave function when player is within 2 blocks and grave DOESN'T have 'vsp_sent_message'
execute as @e[tag=vsp_grave_marker_active,tag=!vsp_grave_sent_message] at @s if entity @p[distance=..3] run function vsp:grave/grave_handler/on_player_near

execute as @e[tag=vsp_grave_marker_active,tag=vsp_grave_sent_message] at @s run function vsp:grave/grave_handler/message_delay

# When a players vspGraveTrigger is set to 1 or greater, run return items function
execute as @a[scores={vspGraveTrigger=1}] at @s run function vsp:grave/player/return_items

# Actives gravePickup trigger for all players
scoreboard players enable @a vspGraveTrigger

# If player has at least one vspGraveTrigger score run check
execute as @a[scores={vspGraveTrigger=1..}] at @s run function vsp:grave/player/in_range

# Adds 1 to all loaded graves vspGraveLife obj when it reaches
scoreboard players add @e[tag=vsp_grave_marker_active] vspGraveLife 1
execute as @e[tag=vsp_grave_marker_active,scores={vspGraveLife=900000..}] at @s run function vsp:grave/grave_handler/kill_grave.mcfunction

#
