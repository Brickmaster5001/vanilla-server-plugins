execute if entity @s[tag=vsp_grave_sent_message] run execute as @a[distance=..2] at @s run scoreboard players operation @s vspGraveIDMatch = @s vspPlayerID
scoreboard players operation @a[distance=..2] vspGraveIDCheck = @s vspGraveID
execute as @a[distance=..2] at @s run function vsp:grave/player/check_grave_owner
execute as @a[distance=..2,scores={vspGraveIDMatch=0}] at @s run function vsp:grave/player/send_grave_pickup_message
execute if entity @a[distance=..2,scores={vspGraveIDMatch=0}] run tag @s add vsp_grave_sent_message
execute if entity @s[tag=vsp_grave_sent_message] run execute as @a[distance=..2] at @s run function vsp:grave/player/reset_grave_check
