scoreboard players add @s vspMessageDelay 1
execute as @s[scores={vspMessageDelay=600..}] at @s run tag @s remove vsp_grave_sent_message
execute as @s[scores={vspMessageDelay=600..}] at @s run scoreboard players reset @s vspMessageDelay
