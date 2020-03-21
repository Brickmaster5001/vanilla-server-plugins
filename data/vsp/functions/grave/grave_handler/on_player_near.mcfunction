execute if entity @s[tag=vsp_grave_sent_message] run execute as @a[distance=..2,tag=!vsp_grave_message_delay] at @s run scoreboard players operation @s vspGraveIDMatch = @s vspPlayerID
scoreboard players operation @a[distance=..2,tag=!vsp_grave_message_delay] vspGraveIDCheck = @s vspGraveID
execute as @a[distance=..2,tag=!vsp_grave_message_delay,tag=!vsp_grave_message_delay] at @s run function vsp:grave/player/check_grave_owner
execute as @a[distance=..2,scores={vspGraveIDMatch=0},tag=!vsp_grave_message_delay] at @s run function vsp:grave/player/send_grave_pickup_message
execute if entity @a[distance=..2,scores={vspGraveIDMatch=0},tag=!vsp_grave_message_delay] run tag @s add vsp_grave_sent_message
execute if entity @s[tag=vsp_grave_sent_message] run execute as @a[distance=..2,tag=!vsp_grave_message_delay] at @s run function vsp:grave/player/reset_grave_check
